require 'mixlib/install'

module Lita
  module Handlers
    class Mixlib < Handler

      route /latest\s+(.+)/, :product, help: { "latest <product> <channel> [<platform> <version> <arch>]" => "Displays latest version of product" }

      def product(response)
        product_name = response.args[0] || 'chef'
        channel = response.args[1] || 'stable'
        platform = response.args[2] || 'ubuntu'
        platform_version = response.args[3] || '14.04'
        arch = response.args[4] || 'x86_64'

        if platform.match('centos') || platform.match('rhel')
          platform = 'el'
        end

        options = {
          channel: channel.to_sym,
          product_name: product_name,
          product_version: :latest,
          platform: platform,
          platform_version: platform_version.to_s,
          architecture: arch
        }
        artifact = ::Mixlib::Install.new(options).artifact_info

        response.reply("*#{product_name}/#{channel}:* #{artifact.version}\n*URL:* #{artifact.url}")
      rescue Exception => e
        response.reply("Error: #{e.message}")
      end
      Lita.register_handler(self)
    end
  end
end
