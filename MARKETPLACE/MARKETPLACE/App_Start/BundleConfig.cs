using System.Web;
using System.Web.Optimization;

namespace MARKETPLACE
{
	public class BundleConfig
	{
		// Para obtener más información sobre las uniones, visite https://go.microsoft.com/fwlink/?LinkId=301862
		public static void RegisterBundles(BundleCollection bundles)
		{

			bundles.Add(new ScriptBundle("~/bundles/javaScriptbootstrap001").Include(
"~/Scripts/bootstrap.min.js",
"~/Scripts/respond.js"));

			bundles.Add(new ScriptBundle("~/bundles/javaScriptpopover002").Include(
					  "~/Scripts/popover.js"));

			bundles.Add(new ScriptBundle("~/bundles/javaScriptjquery003").Include(
					  "~/Scripts/jQuery/jquery.js"));

			bundles.Add(new StyleBundle("~/Content/CSSbootstrap001").Include(
					  "~/Content/bootstrap.min.css",
					  "~/Content/site.css"));

			bundles.Add(new StyleBundle("~/Content/CSS002").Include(
					  "~/Content/login/loginEstilos.css"));

			bundles.Add(new StyleBundle("~/Content/CSS003").Include(
					  "~/Content/estilos.css",
					  "~/Content/gridPosition.css",
					  "~/Content/style.css"));

			bundles.Add(new StyleBundle("~/Content/CSS004").Include(
					  "~/Content/registrar.css"));

			bundles.Add(new StyleBundle("~/Content/CSS005").Include(
					  "~/Content/afiliado.css"));












			bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
						"~/Scripts/jquery-{version}.js"));

			bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
						"~/Scripts/jquery.validate*"));

			// Utilice la versión de desarrollo de Modernizr para desarrollar y obtener información. De este modo, estará
			// ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
			bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
						"~/Scripts/modernizr-*"));

			bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
					  "~/Scripts/bootstrap.js",
					  "~/Scripts/respond.js"));

			bundles.Add(new StyleBundle("~/Content/css000").Include(
					  "~/Content/bootstrap.css",
					  "~/Content/site.css"));

			bundles.Add(new StyleBundle("~/Content/css").Include(
					  "~/Content/zocial.css"));


		}
	}
}
