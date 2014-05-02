  


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>vim-mac-classic-theme/colors/mac_classic.vim at master · nelstrom/vim-mac-classic-theme</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="apple-touch-icon-114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-touch-icon-114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="apple-touch-icon-144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="apple-touch-icon-144.png" />
    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="urkk+XTr3gD7nwrYI4sBo6V2vYPCQoaGahN2OKkqRxI=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/assets/github-4a9b57c354a4014cf6abc11236671bcb30d81a4e.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/assets/github2-678b50bf7cba9691eead17e12530134d01b45f04.css" media="screen" rel="stylesheet" type="text/css" />
    


    <script src="https://a248.e.akamai.net/assets.github.com/assets/frameworks-c9ece3c1d530c8b5201cab80ec5efc53bf244a05.js" type="text/javascript"></script>
    <script src="https://a248.e.akamai.net/assets.github.com/assets/github-dc5b8095529da6d9db0d3f7251dfe76535c35735.js" type="text/javascript"></script>
    

      <link rel='permalink' href='/nelstrom/vim-mac-classic-theme/blob/8bf9e3d96a0988849e8dd9954d443857191c8639/colors/mac_classic.vim'>
    <meta property="og:title" content="vim-mac-classic-theme"/>
    <meta property="og:type" content="githubog:gitrepository"/>
    <meta property="og:url" content="https://github.com/nelstrom/vim-mac-classic-theme"/>
    <meta property="og:image" content="https://a248.e.akamai.net/assets.github.com/images/gravatars/gravatar-user-420.png?1345673561"/>
    <meta property="og:site_name" content="GitHub"/>
    <meta property="og:description" content="vim-mac-classic-theme - A port of the Mac Classic theme from TextMate to Vim. Because everyone needs a decent light theme for special occasions."/>

    <meta name="description" content="vim-mac-classic-theme - A port of the Mac Classic theme from TextMate to Vim. Because everyone needs a decent light theme for special occasions." />

  <link href="https://github.com/nelstrom/vim-mac-classic-theme/commits/master.atom" rel="alternate" title="Recent Commits to vim-mac-classic-theme:master" type="application/atom+xml" />

  </head>


  <body class="logged_in page-blob linux vis-public env-production ">
    <div id="wrapper">

    
    

    

      <div id="header" class="true clearfix">
        <div class="container clearfix">
          <a class="site-logo " href="https://github.com/">
            <img alt="GitHub" class="github-logo-4x" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x.png?1338945075" />
            <img alt="GitHub" class="github-logo-4x-hover" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x-hover.png?1338945075" />
          </a>

            <a href="/notifications" class="notification-indicator tooltipped downwards" title="You have no unread notifications">
              <span class="mail-status all-read"></span>
            </a>

              
    <div class="topsearch command-bar-activated">
      <form accept-charset="UTF-8" action="/search" class="command_bar_form" id="top_search_form" method="get">
  <a href="/advanced_search" class="advanced-search tooltipped downwards command-bar-search" id="advanced_search" title="Advanced Search"><span class="mini-icon mini-icon-advanced-search "></span></a>
  <input type="text" name="q" id="command-bar" placeholder="Search or Type a Command" tabindex="1" data-username="rhc" autocapitalize="off" />
  <span class="mini-icon help tooltipped downwards" title="Show Command Bar Help"></span>
  <input type="hidden" name="type" value="Everything" />
  <input type="hidden" name="repo" value="" />
  <input type="hidden" name="langOverride" value="" />
  <input type="hidden" name="start_value" value="1" />
</form>

      <ul class="top-nav">
          <li class="explore"><a href="https://github.com/explore">Explore</a></li>
          <li><a href="https://gist.github.com">Gist</a></li>
          <li><a href="/blog">Blog</a></li>
        <li><a href="http://help.github.com">Help</a></li>
      </ul>
    </div>


            

  
  <div id="userbox">
    <div id="user">
      <a href="https://github.com/rhc"><img height="20" src="https://secure.gravatar.com/avatar/50a958f4601646a9148b3fed949eb734?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
      <a href="https://github.com/rhc" class="name">rhc</a>
    </div>
    <ul id="user-links">
      <li>
        <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a New Repo"><span class="mini-icon mini-icon-create"></span></a>
      </li>
      <li>
        <a href="/settings/profile" id="account_settings"
          class="tooltipped downwards"
          title="Account Settings ">
          <span class="mini-icon mini-icon-account-settings"></span>
        </a>
      </li>
      <li>
          <a href="/logout" data-method="post" id="logout" class="tooltipped downwards" title="Sign Out">
            <span class="mini-icon mini-icon-logout"></span>
          </a>
      </li>
    </ul>
  </div>



          
        </div>
      </div>

      

      


            <div class="site hfeed" itemscope itemtype="http://schema.org/WebPage">
      <div class="hentry">
        
        <div class="pagehead repohead instapaper_ignore readability-menu">
          <div class="container">
            <div class="title-actions-bar">
              


                  <ul class="pagehead-actions">

          <li class="subscription">
              <form accept-charset="UTF-8" action="/notifications/subscribe" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="urkk+XTr3gD7nwrYI4sBo6V2vYPCQoaGahN2OKkqRxI=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="923302" />
  <div class="context-menu-container js-menu-container js-context-menu">
    <span class="minibutton switcher bigger js-menu-target">
      <span class="js-context-button">
          <span class="mini-icon mini-icon-watching"></span>Watch
      </span>
    </span>

    <div class="context-pane js-menu-content">
      <a href="javascript:;" class="close js-menu-close"><span class="mini-icon mini-icon-remove-close"></span></a>
      <div class="context-title">Notification status</div>

      <div class="context-body pane-selector">
        <ul class="js-navigation-container">
          <li class="selector-item js-navigation-item js-navigation-target selected">
            <span class="mini-icon mini-icon-confirm"></span>
            <label>
              <input checked="checked" id="do_included" name="do" type="radio" value="included" />
              <h4>Not watching</h4>
              <p>You will only receive notifications when you participate or are mentioned.</p>
            </label>
            <span class="context-button-text js-context-button-text">
              <span class="mini-icon mini-icon-watching"></span>
              Watch
            </span>
          </li>
          <li class="selector-item js-navigation-item js-navigation-target ">
            <span class="mini-icon mini-icon-confirm"></span>
            <label>
              <input id="do_subscribed" name="do" type="radio" value="subscribed" />
              <h4>Watching</h4>
              <p>You will receive all notifications for this repository.</p>
            </label>
            <span class="context-button-text js-context-button-text">
              <span class="mini-icon mini-icon-unwatch"></span>
              Unwatch
            </span>
          </li>
          <li class="selector-item js-navigation-item js-navigation-target ">
            <span class="mini-icon mini-icon-confirm"></span>
            <label>
              <input id="do_ignore" name="do" type="radio" value="ignore" />
              <h4>Ignored</h4>
              <p>You will not receive notifications for this repository.</p>
            </label>
            <span class="context-button-text js-context-button-text">
              <span class="mini-icon mini-icon-mute"></span>
              Stop ignoring
            </span>
          </li>
        </ul>
      </div>
    </div>
  </div>
</form>
          </li>

          <li class="js-toggler-container js-social-container starring-container ">
            <a href="/nelstrom/vim-mac-classic-theme/unstar" class="minibutton js-toggler-target starred" data-remote="true" data-method="post" rel="nofollow">
              <span class="mini-icon mini-icon-star"></span>Unstar
            </a><a href="/nelstrom/vim-mac-classic-theme/star" class="minibutton js-toggler-target unstarred" data-remote="true" data-method="post" rel="nofollow">
              <span class="mini-icon mini-icon-star"></span>Star
            </a><a class="social-count js-social-count" href="/nelstrom/vim-mac-classic-theme/stargazers">45</a>
          </li>

              <li><a href="/nelstrom/vim-mac-classic-theme/fork" class="minibutton js-toggler-target fork-button lighter" rel="nofollow" data-method="post"><span class="mini-icon mini-icon-fork"></span>Fork</a><a href="/nelstrom/vim-mac-classic-theme/network" class="social-count">12</a>
              </li>


    </ul>

              <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
                <span class="repo-label"><span>public</span></span>
                <span class="mega-icon mega-icon-public-repo"></span>
                <span class="author vcard">
                  <a href="/nelstrom" class="url fn" itemprop="url" rel="author">
                  <span itemprop="title">nelstrom</span>
                  </a></span> /
                <strong><a href="/nelstrom/vim-mac-classic-theme" class="js-current-repository">vim-mac-classic-theme</a></strong>
              </h1>
            </div>

            

  <ul class="tabs">
    <li><a href="/nelstrom/vim-mac-classic-theme" class="selected" highlight="repo_sourcerepo_downloadsrepo_commitsrepo_tagsrepo_branches">Code</a></li>
    <li><a href="/nelstrom/vim-mac-classic-theme/network" highlight="repo_network">Network</a></li>
    <li><a href="/nelstrom/vim-mac-classic-theme/pulls" highlight="repo_pulls">Pull Requests <span class='counter'>0</span></a></li>

      <li><a href="/nelstrom/vim-mac-classic-theme/issues" highlight="repo_issues">Issues <span class='counter'>0</span></a></li>

      <li><a href="/nelstrom/vim-mac-classic-theme/wiki" highlight="repo_wiki">Wiki</a></li>


    <li><a href="/nelstrom/vim-mac-classic-theme/graphs" highlight="repo_graphsrepo_contributors">Graphs</a></li>


  </ul>
  
<div class="tabnav">

  <span class="tabnav-right">
    <ul class="tabnav-tabs">
      <li><a href="/nelstrom/vim-mac-classic-theme/tags" class="tabnav-tab" highlight="repo_tags">Tags <span class="counter blank">0</span></a></li>
      <li><a href="/nelstrom/vim-mac-classic-theme/downloads" class="tabnav-tab" highlight="repo_downloads">Downloads <span class="counter blank">0</span></a></li>
    </ul>
    
  </span>

  <div class="tabnav-widget scope">


    <div class="context-menu-container js-menu-container js-context-menu">
      <a href="#"
         class="minibutton bigger switcher js-menu-target js-commitish-button btn-branch repo-tree"
         data-hotkey="w"
         data-ref="master">
         <span><em class="mini-icon mini-icon-branch"></em><i>branch:</i> master</span>
      </a>

      <div class="context-pane commitish-context js-menu-content">
        <a href="javascript:;" class="close js-menu-close"><span class="mini-icon mini-icon-remove-close"></span></a>
        <div class="context-title">Switch branches/tags</div>
        <div class="context-body pane-selector commitish-selector js-navigation-container">
          <div class="filterbar">
            <input type="text" id="context-commitish-filter-field" class="js-navigation-enable js-filterable-field" placeholder="Filter branches/tags">
            <ul class="tabs">
              <li><a href="#" data-filter="branches" class="selected">Branches</a></li>
                <li><a href="#" data-filter="tags">Tags</a></li>
            </ul>
          </div>

          <div class="js-filter-tab js-filter-branches" data-filterable-for="context-commitish-filter-field" data-filterable-type=substring>
              <div class="commitish-item branch-commitish selector-item js-navigation-item js-navigation-target selected">
                <span class="mini-icon mini-icon-confirm"></span>
                <h4>
                    <a href="/nelstrom/vim-mac-classic-theme/blob/master/colors/mac_classic.vim" class="js-navigation-open" data-name="master" rel="nofollow">master</a>
                </h4>
              </div>
              <div class="commitish-item branch-commitish selector-item js-navigation-item js-navigation-target ">
                <span class="mini-icon mini-icon-confirm"></span>
                <h4>
                    <a href="/nelstrom/vim-mac-classic-theme/blob/palette/colors/mac_classic.vim" class="js-navigation-open" data-name="palette" rel="nofollow">palette</a>
                </h4>
              </div>
          </div>

            <div class="js-filter-tab js-filter-tags filter-tab-empty" style="display:none" data-filterable-for="context-commitish-filter-field" data-filterable-type=substring>
            </div>

          <div class="no-results">Nothing to show</div>
        </div>
      </div><!-- /.commitish-context-context -->
    </div>
  </div> <!-- /.scope -->

  <ul class="tabnav-tabs">
    <li><a href="/nelstrom/vim-mac-classic-theme" class="selected tabnav-tab" highlight="repo_source">Files</a></li>
    <li><a href="/nelstrom/vim-mac-classic-theme/commits/master" class="tabnav-tab" highlight="repo_commits">Commits</a></li>
    <li><a href="/nelstrom/vim-mac-classic-theme/branches" class="tabnav-tab" highlight="repo_branches" rel="nofollow">Branches <span class="counter ">2</span></a></li>
  </ul>

</div>

  
  
  


            
          </div>
        </div><!-- /.repohead -->

        <div id="js-repo-pjax-container" class="container context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:b7cd3eead46e7c502c58d7400c9ca3c6 -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:b7cd3eead46e7c502c58d7400c9ca3c6 -->

<div id="slider">


    <p title="This is a placeholder element" class="js-history-link-replace hidden"></p>
    <div class="breadcrumb" data-path="colors/mac_classic.vim/">
      <b itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/nelstrom/vim-mac-classic-theme" class="js-slider-breadcrumb" itemscope="url"><span itemprop="title">vim-mac-classic-theme</span></a></b> / <span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/nelstrom/vim-mac-classic-theme/tree/master/colors" class="js-slider-breadcrumb" itemscope="url"><span itemprop="title">colors</span></a></span> / <strong class="final-path">mac_classic.vim</strong> <span class="js-clippy mini-icon mini-icon-clippy " data-clipboard-text="colors/mac_classic.vim" data-copied-hint="copied!" data-copy-hint="copy to clipboard"></span>
    </div>

    <a href="/nelstrom/vim-mac-classic-theme/find/master" class="js-slide-to" data-hotkey="t" style="display:none">Show File Finder</a>

      
  <div class="commit file-history-tease js-blob-contributors-content" data-path="colors/mac_classic.vim/">
    <img class="main-avatar" height="24" src="https://secure.gravatar.com/avatar/434c90700610f3e6e75a3c30b8a9e6d2?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
    <span class="author">perryt</span>
    <time class="js-relative-date" datetime="2012-02-24T09:07:12-08:00" title="2012-02-24 09:07:12">February 24, 2012</time>
    <div class="commit-title">
        <a href="/nelstrom/vim-mac-classic-theme/commit/62f15c71aef8f1458ca419eac5f1d09b1400aa00" class="message">Fixed CSS attribute highlighting</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>1</strong> contributor</a></p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2>Users on GitHub who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/802afd5856ed0054d7d1851ea21cbabe?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/nelstrom">nelstrom</a>
        </li>
      </ul>
    </div>
  </div>


    <div class="frames">
      <div class="frame frame-center" data-path="colors/mac_classic.vim/" data-permalink-url="/nelstrom/vim-mac-classic-theme/blob/8bf9e3d96a0988849e8dd9954d443857191c8639/colors/mac_classic.vim" data-title="vim-mac-classic-theme/colors/mac_classic.vim at master · nelstrom/vim-mac-classic-theme · GitHub" data-type="blob">

        <div id="files" class="bubble">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><b class="mini-icon mini-icon-text-file"></b></span>
                <span class="mode" title="File Mode">file</span>
                  <span>227 lines (208 sloc)</span>
                <span>8.684 kb</span>
              </div>
              <ul class="button-group actions">
                  <li>
                    <a class="grouped-button file-edit-link minibutton bigger lighter" href="/nelstrom/vim-mac-classic-theme/edit/master/colors/mac_classic.vim" data-method="post" rel="nofollow" data-hotkey="e">Edit</a>
                  </li>
                <li>
                  <a href="/nelstrom/vim-mac-classic-theme/raw/master/colors/mac_classic.vim" class="minibutton grouped-button bigger lighter" id="raw-url">Raw</a>
                </li>
                  <li>
                    <a href="/nelstrom/vim-mac-classic-theme/blame/master/colors/mac_classic.vim" class="minibutton grouped-button bigger lighter">Blame</a>
                  </li>
                <li>
                  <a href="/nelstrom/vim-mac-classic-theme/commits/master/colors/mac_classic.vim" class="minibutton grouped-button bigger lighter" rel="nofollow">History</a>
                </li>
              </ul>
            </div>
                <div class="data type-viml">
      <table cellpadding="0" cellspacing="0" class="lines">
        <tr>
          <td>
            <pre class="line_numbers"><span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
</pre>
          </td>
          <td width="100%">
                <div class="highlight"><pre><div class='line' id='LC1'><span class="c">&quot; Vim color scheme</span></div><div class='line' id='LC2'><span class="c">&quot;</span></div><div class='line' id='LC3'><span class="c">&quot; Name:         mac_classic.vim</span></div><div class='line' id='LC4'><span class="c">&quot; Maintainer:   Drew Neil &lt;andrew.jr.neil@gmail.com&gt;</span></div><div class='line' id='LC5'><span class="c">&quot; License:      public domain</span></div><div class='line' id='LC6'><span class="c">&quot; Version:      0.1</span></div><div class='line' id='LC7'><br/></div><div class='line' id='LC8'><span class="c">&quot; Boilerplate: {{{1</span></div><div class='line' id='LC9'><span class="k">set</span> <span class="nb">background</span><span class="p">=</span><span class="nb">light</span></div><div class='line' id='LC10'><span class="nb">highlight</span> clear</div><div class='line' id='LC11'><br/></div><div class='line' id='LC12'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;syntax_on&quot;</span><span class="p">)</span></div><div class='line' id='LC13'>&nbsp;&nbsp;<span class="nb">syntax</span> reset</div><div class='line' id='LC14'><span class="k">endif</span></div><div class='line' id='LC15'><br/></div><div class='line' id='LC16'><span class="k">let</span> <span class="k">g</span>:colors_name <span class="p">=</span> <span class="s2">&quot;mac_classic&quot;</span></div><div class='line' id='LC17'><br/></div><div class='line' id='LC18'><br/></div><div class='line' id='LC19'><span class="c">&quot; Colors: {{{1</span></div><div class='line' id='LC20'><span class="c">&quot; TODO figure out how to not highlight TODO</span></div><div class='line' id='LC21'><span class="c">&quot;</span></div><div class='line' id='LC22'><span class="c">&quot; #000000</span></div><div class='line' id='LC23'><span class="c">&quot; #3C4C72 - BLUE/GREY - cursor, rails helpers</span></div><div class='line' id='LC24'><span class="c">&quot; #0000A2 - D.BLUE - numbers &amp; function names</span></div><div class='line' id='LC25'><span class="c">&quot; #1E39F6 - BLUE</span></div><div class='line' id='LC26'><span class="c">&quot; #0066FF - L.BLUE - Comments, TODOs and folds</span></div><div class='line' id='LC27'><span class="c">&quot; #6E79F1 - L.PURPLE - Booleans, Ruby Constants &amp; CSS definitions</span></div><div class='line' id='LC28'><span class="c">&quot; #318495 - BLUE/GREEN - Ruby instance/global/pseudo variables</span></div><div class='line' id='LC29'><span class="c">&quot; #007B22 - D.GREEN - Strings, Labels and code blocks in Markdown</span></div><div class='line' id='LC30'><span class="c">&quot; #00BC41 - L.GREEN - CSS common attributes &amp; ruby interpolation</span></div><div class='line' id='LC31'><span class="c">&quot; #990000 - BURGUNDY - Errors and Warnings</span></div><div class='line' id='LC32'><span class="c">&quot; #D51015 - RED for constants, symbols, numbers</span></div><div class='line' id='LC33'><span class="c">&quot; #E18AC7 - PINK RegularExpressions in Ruby</span></div><div class='line' id='LC34'><span class="c">&quot; #FFCE77 - ORANGE - Incremental Search</span></div><div class='line' id='LC35'><span class="c">&quot; #FFE6BB - L.ORANGE - Search</span></div><div class='line' id='LC36'><span class="c">&quot; #C6DEFF - VL.BLUE Visual, Current StatusLine &amp; AutoComplete selection</span></div><div class='line' id='LC37'><span class="c">&quot; #808080 - Line numbers</span></div><div class='line' id='LC38'><span class="c">&quot; #CFCFCF - VerticalSplit separator</span></div><div class='line' id='LC39'><span class="c">&quot; #DFDFDF - Invisible Characters</span></div><div class='line' id='LC40'><span class="c">&quot; #EFEFEF - LineNumber &amp; Non-Current StatusLine</span></div><div class='line' id='LC41'><span class="c">&quot; #F0F6FF - CursorLine &amp; CursorColumn</span></div><div class='line' id='LC42'><span class="c">&quot; #FFFFFF - WHITE</span></div><div class='line' id='LC43'><span class="c">&quot; }}}</span></div><div class='line' id='LC44'><br/></div><div class='line' id='LC45'><span class="c">&quot; GUI: {{{1</span></div><div class='line' id='LC46'><span class="k">hi</span> Cursor  guifg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">15</span> guibg<span class="p">=</span>#<span class="m">3</span>C<span class="m">4</span>C<span class="m">72</span> ctermbg<span class="p">=</span><span class="m">240</span></div><div class='line' id='LC47'><span class="k">hi</span> Visual  guibg<span class="p">=</span>#C6DEFF ctermbg<span class="p">=</span><span class="m">189</span></div><div class='line' id='LC48'><span class="k">hi</span> CursorLine  guibg<span class="p">=</span>#F0F6FF ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC49'><span class="k">hi</span> CursorColumn  guibg<span class="p">=</span>#F0F6FF ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC50'><span class="k">hi</span> LineNr  guifg<span class="p">=</span><span class="mh">#808080</span> ctermfg<span class="p">=</span><span class="m">244</span> guibg<span class="p">=</span>#EFEFEF ctermbg<span class="p">=</span><span class="m">7</span></div><div class='line' id='LC51'><span class="k">hi</span> VertSplit  guifg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">15</span> guibg<span class="p">=</span>#CFCFCF ctermbg<span class="p">=</span><span class="m">252</span> <span class="k">gui</span><span class="p">=</span><span class="nb">NONE</span></div><div class='line' id='LC52'><span class="k">hi</span> MatchParen  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> guibg<span class="p">=</span><span class="nb">NONE</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC53'><span class="k">hi</span> Pmenu guibg<span class="p">=</span>#EFEFEF ctermbg<span class="p">=</span><span class="m">7</span></div><div class='line' id='LC54'><span class="k">hi</span> PmenuSel  guibg<span class="p">=</span>#C6DEFF ctermbg<span class="p">=</span><span class="m">189</span></div><div class='line' id='LC55'><span class="k">hi</span> Directory  guifg<span class="p">=</span>#D51015 ctermfg<span class="p">=</span><span class="m">160</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC56'><span class="k">hi</span> Folded  guifg<span class="p">=</span>#<span class="m">0066</span>FF ctermfg<span class="p">=</span><span class="m">27</span> guibg<span class="p">=</span>#FFFFFF ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC57'><span class="c">&quot; StatusLine: {{{2</span></div><div class='line' id='LC58'><span class="k">hi</span> StatusLine  guifg<span class="p">=</span><span class="mh">#000000</span> ctermfg<span class="p">=</span><span class="m">0</span> guibg<span class="p">=</span>#C6DEFF ctermbg<span class="p">=</span><span class="m">189</span> <span class="k">gui</span><span class="p">=</span><span class="nb">italic</span></div><div class='line' id='LC59'><span class="k">hi</span> StatusLineNC  guifg<span class="p">=</span><span class="mh">#000000</span> ctermfg<span class="p">=</span><span class="m">0</span> guibg<span class="p">=</span>#EFEFEF ctermbg<span class="p">=</span><span class="m">7</span> <span class="k">gui</span><span class="p">=</span><span class="nb">NONE</span></div><div class='line' id='LC60'><br/></div><div class='line' id='LC61'><span class="c">&quot; Search: {{{2</span></div><div class='line' id='LC62'><span class="c">&quot; [IncSearch is stronger than Search]</span></div><div class='line' id='LC63'><span class="k">hi</span> IncSearch  guifg<span class="p">=</span><span class="nb">NONE</span> guibg<span class="p">=</span>#FFCE77 ctermbg<span class="p">=</span><span class="m">222</span> <span class="k">gui</span><span class="p">=</span><span class="nb">NONE</span></div><div class='line' id='LC64'><span class="k">hi</span> Search  guibg<span class="p">=</span>#FFE6BB ctermbg<span class="p">=</span><span class="m">223</span></div><div class='line' id='LC65'><br/></div><div class='line' id='LC66'><span class="c">&quot; Syntax: {{{1</span></div><div class='line' id='LC67'><span class="k">hi</span> Normal  guifg<span class="p">=</span><span class="mh">#000000</span> ctermfg<span class="p">=</span><span class="m">0</span> guibg<span class="p">=</span>#FFFFFF ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC68'><span class="k">hi</span> Boolean  guifg<span class="p">=</span>#<span class="m">6</span>E<span class="m">79</span>F<span class="m">1</span> ctermfg<span class="p">=</span><span class="m">69</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC69'><span class="k">hi</span> Character  guifg<span class="p">=</span>#D51015 ctermfg<span class="p">=</span><span class="m">160</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC70'><span class="k">hi</span> Comment  guifg<span class="p">=</span>#<span class="m">0066</span>FF ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">italic</span></div><div class='line' id='LC71'><span class="k">hi</span> Conditional  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC72'><span class="k">hi</span> Constant  guifg<span class="p">=</span>#D51015 ctermfg<span class="p">=</span><span class="m">160</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC73'><span class="k">hi</span> Define  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC74'><span class="k">hi</span> ErrorMsg  guifg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">15</span> guibg<span class="p">=</span><span class="mh">#990000</span> ctermbg<span class="p">=</span><span class="m">88</span></div><div class='line' id='LC75'><span class="k">hi</span> WarningMsg  guifg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">15</span> guibg<span class="p">=</span><span class="mh">#990000</span> ctermbg<span class="p">=</span><span class="m">88</span></div><div class='line' id='LC76'><span class="k">hi</span> Float  guifg<span class="p">=</span>#<span class="m">0000</span>A<span class="m">2</span> ctermfg<span class="p">=</span><span class="m">19</span></div><div class='line' id='LC77'><span class="k">hi</span> Function  guifg<span class="p">=</span>#<span class="m">0000</span>A<span class="m">2</span> ctermfg<span class="p">=</span><span class="m">19</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC78'><span class="k">hi</span> Identifier  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC79'><span class="k">hi</span> Keyword  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC80'><span class="k">hi</span> Label  guifg<span class="p">=</span>#<span class="m">007</span>B<span class="m">22</span> ctermfg<span class="p">=</span><span class="m">28</span></div><div class='line' id='LC81'><span class="k">hi</span> Number  guifg<span class="p">=</span>#<span class="m">0000</span>A<span class="m">2</span> ctermfg<span class="p">=</span><span class="m">19</span></div><div class='line' id='LC82'><span class="k">hi</span> Operator  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC83'><span class="k">hi</span> PreProc  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC84'><span class="k">hi</span> Special  guifg<span class="p">=</span><span class="mh">#000000</span> ctermfg<span class="p">=</span><span class="m">0</span></div><div class='line' id='LC85'><span class="k">hi</span> Statement  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC86'><span class="k">hi</span> StorageClass  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC87'><span class="k">hi</span> String  guifg<span class="p">=</span>#<span class="m">007</span>B<span class="m">22</span> ctermfg<span class="p">=</span><span class="m">28</span></div><div class='line' id='LC88'><span class="k">hi</span> Title  guifg<span class="p">=</span><span class="mh">#000000</span> ctermfg<span class="p">=</span><span class="m">0</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC89'><span class="k">hi</span> Todo  guifg<span class="p">=</span>#<span class="m">0066</span>FF ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span>inverse<span class="p">,</span><span class="nb">bold</span><span class="p">,</span><span class="nb">italic</span></div><div class='line' id='LC90'><span class="k">hi</span> Underlined  <span class="k">gui</span><span class="p">=</span><span class="nb">underline</span></div><div class='line' id='LC91'><br/></div><div class='line' id='LC92'><span class="c">&quot; Invisible character colors</span></div><div class='line' id='LC93'><span class="k">hi</span> NonText  guifg<span class="p">=</span>#DFDFDF ctermfg<span class="p">=</span><span class="m">253</span> guibg<span class="p">=</span>#FFFFFF ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC94'><span class="k">hi</span> SpecialKey  guifg<span class="p">=</span>#DFDFDF ctermfg<span class="p">=</span><span class="m">253</span> guibg<span class="p">=</span>#FFFFFF ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC95'><br/></div><div class='line' id='LC96'><span class="c">&quot; Diff styles {{{1</span></div><div class='line' id='LC97'><span class="k">hi</span> diffAdded guifg<span class="p">=</span>#<span class="m">007</span>B<span class="m">22</span> guibg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">28</span> ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC98'><span class="k">hi</span> diffRemoved guifg<span class="p">=</span>#D51015 guibg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">160</span> ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC99'><span class="k">hi</span> diffFile guifg<span class="p">=</span>#<span class="m">6</span>E<span class="m">79</span>F<span class="m">1</span> guibg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">69</span> ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC100'><span class="k">hi</span> diffNewFile guifg<span class="p">=</span>#<span class="m">6</span>E<span class="m">79</span>F<span class="m">1</span> guibg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">69</span> ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC101'><span class="k">hi</span> diffLine guifg<span class="p">=</span><span class="mh">#000000</span> guibg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">0</span> ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC102'><br/></div><div class='line' id='LC103'><span class="k">hi</span> diffAdd guifg<span class="p">=</span>#<span class="m">007</span>B<span class="m">22</span> guibg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">28</span> ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC104'><span class="k">hi</span> diffChange guifg<span class="p">=</span>#<span class="m">007</span>B<span class="m">22</span> guibg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">28</span> ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC105'><span class="k">hi</span> diffText guifg<span class="p">=</span>#<span class="m">007</span>B<span class="m">22</span> guibg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">28</span> ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC106'><span class="k">hi</span> link diffDelete diffRemoved</div><div class='line' id='LC107'><span class="c">&quot; Git styles {{{1</span></div><div class='line' id='LC108'><span class="k">hi</span> gitcommitFirstLine guifg<span class="p">=</span><span class="mh">#000000</span> guibg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">0</span> ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC109'><span class="k">hi</span> gitcommitSelectedType guifg<span class="p">=</span>#<span class="m">007</span>B<span class="m">22</span> guibg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">28</span> ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC110'><span class="k">hi</span> link gitcommitSelectedFile gitcommitSelectedType</div><div class='line' id='LC111'><span class="k">hi</span> gitcommitDiscardedType guifg<span class="p">=</span>#D51015 guibg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">160</span> ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC112'><span class="k">hi</span> link gitcommitDiscardedFile gitcommitDiscardedType</div><div class='line' id='LC113'><span class="k">hi</span> gitcommitUntrackedFile guifg<span class="p">=</span>#<span class="m">6</span>E<span class="m">79</span>F<span class="m">1</span> guibg<span class="p">=</span>#FFFFFF ctermfg<span class="p">=</span><span class="m">69</span> ctermbg<span class="p">=</span><span class="m">15</span></div><div class='line' id='LC114'><span class="c">&quot; Ruby styles {{{1</span></div><div class='line' id='LC115'><span class="k">hi</span> rubyClass  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC116'><span class="k">hi</span> rubyFunction  guifg<span class="p">=</span>#<span class="m">0000</span>A<span class="m">2</span> ctermfg<span class="p">=</span><span class="m">19</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC117'><span class="k">hi</span> rubyInterpolationDelimiter  guifg<span class="p">=</span>#<span class="m">00</span>BC<span class="m">41</span> ctermfg<span class="p">=</span><span class="m">35</span></div><div class='line' id='LC118'><span class="k">hi</span> rubyInterpolation  guifg<span class="p">=</span>#<span class="m">00</span>BC<span class="m">41</span> ctermfg<span class="p">=</span><span class="m">35</span></div><div class='line' id='LC119'><span class="k">hi</span> rubySymbol  guifg<span class="p">=</span>#D51015 ctermfg<span class="p">=</span><span class="m">160</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC120'><span class="k">hi</span> rubyConstant  guifg<span class="p">=</span>#<span class="m">6</span>E<span class="m">79</span>F<span class="m">1</span> ctermfg<span class="p">=</span><span class="m">69</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC121'><span class="k">hi</span> rubyStringDelimiter  guifg<span class="p">=</span>#<span class="m">007</span>B<span class="m">22</span> ctermfg<span class="p">=</span><span class="m">28</span></div><div class='line' id='LC122'><span class="k">hi</span> rubyInstanceVariable  guifg<span class="p">=</span><span class="mh">#318495</span> ctermfg<span class="p">=</span><span class="m">66</span></div><div class='line' id='LC123'><span class="k">hi</span> rubyInclude  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC124'><span class="k">hi</span> rubyGlobalVariable  guifg<span class="p">=</span><span class="mh">#318495</span> ctermfg<span class="p">=</span><span class="m">66</span></div><div class='line' id='LC125'><span class="k">hi</span> rubyRegexp  guifg<span class="p">=</span>#E18AC7 ctermfg<span class="p">=</span><span class="m">176</span></div><div class='line' id='LC126'><span class="k">hi</span> rubyRegexpAnchor  guifg<span class="p">=</span>#E18AC7 ctermfg<span class="p">=</span><span class="m">176</span></div><div class='line' id='LC127'><span class="k">hi</span> rubyRegexpQuantifier  guifg<span class="p">=</span>#E18AC7 ctermfg<span class="p">=</span><span class="m">176</span></div><div class='line' id='LC128'><span class="k">hi</span> rubyRegexpParens  guifg<span class="p">=</span>#E18AC7 ctermfg<span class="p">=</span><span class="m">176</span></div><div class='line' id='LC129'><span class="k">hi</span> rubyRegexpEscape  guifg<span class="p">=</span>#<span class="m">00</span>BC<span class="m">41</span> ctermfg<span class="p">=</span><span class="m">35</span></div><div class='line' id='LC130'><span class="k">hi</span> rubyRegexpCharClass  guifg<span class="p">=</span>#<span class="m">00</span>BC<span class="m">41</span> ctermfg<span class="p">=</span><span class="m">35</span></div><div class='line' id='LC131'><span class="k">hi</span> rubyRegexpDelimiter  guifg<span class="p">=</span>#E18AC7 ctermfg<span class="p">=</span><span class="m">176</span></div><div class='line' id='LC132'><span class="k">hi</span> rubyEscape  guifg<span class="p">=</span>#<span class="m">00</span>BC<span class="m">41</span> ctermfg<span class="p">=</span><span class="m">35</span></div><div class='line' id='LC133'><span class="k">hi</span> rubyControl  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC134'><span class="k">hi</span> rubyOperator  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC135'><span class="k">hi</span> rubyException  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC136'><span class="k">hi</span> rubyPseudoVariable  guifg<span class="p">=</span><span class="mh">#318495</span> ctermfg<span class="p">=</span><span class="m">66</span></div><div class='line' id='LC137'><span class="k">hi</span> rubyRailsUserClass  guifg<span class="p">=</span>#<span class="m">6</span>E<span class="m">79</span>F<span class="m">1</span> ctermfg<span class="p">=</span><span class="m">69</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC138'><span class="k">hi</span> rubyRailsARAssociationMethod  guifg<span class="p">=</span>#<span class="m">3</span>C<span class="m">4</span>C<span class="m">72</span> ctermfg<span class="p">=</span><span class="m">240</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC139'><span class="k">hi</span> rubyRailsARMethod  guifg<span class="p">=</span>#<span class="m">3</span>C<span class="m">4</span>C<span class="m">72</span> ctermfg<span class="p">=</span><span class="m">240</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC140'><span class="k">hi</span> rubyRailsRenderMethod  guifg<span class="p">=</span>#<span class="m">3</span>C<span class="m">4</span>C<span class="m">72</span> ctermfg<span class="p">=</span><span class="m">240</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC141'><span class="k">hi</span> rubyRailsMethod  guifg<span class="p">=</span>#<span class="m">3</span>C<span class="m">4</span>C<span class="m">72</span> ctermfg<span class="p">=</span><span class="m">240</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC142'><span class="k">hi</span> link erubyComment Comment</div><div class='line' id='LC143'><span class="k">hi</span> erubyRailsMethod  guifg<span class="p">=</span>#<span class="m">3</span>C<span class="m">4</span>C<span class="m">72</span> ctermfg<span class="p">=</span><span class="m">240</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC144'><br/></div><div class='line' id='LC145'><span class="c">&quot; XML: {{{1</span></div><div class='line' id='LC146'><span class="k">hi</span> link xmlEndTag xmlTag</div><div class='line' id='LC147'><span class="c">&quot; HTML: {{{1</span></div><div class='line' id='LC148'><span class="k">hi</span> htmlTag  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span></div><div class='line' id='LC149'><span class="k">hi</span> link htmlEndTag htmlTag</div><div class='line' id='LC150'><span class="k">hi</span> link htmlTagName htmlTag</div><div class='line' id='LC151'><span class="k">hi</span> link htmlArg htmlTag</div><div class='line' id='LC152'><span class="k">hi</span> htmlSpecialChar  guifg<span class="p">=</span>#D51015 ctermfg<span class="p">=</span><span class="m">160</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC153'><span class="k">hi</span> htmlH1 <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC154'><span class="k">hi</span> link htmlH2 htmlH1</div><div class='line' id='LC155'><span class="k">hi</span> link htmlH3 htmlH1</div><div class='line' id='LC156'><span class="k">hi</span> link htmlH4 htmlH1</div><div class='line' id='LC157'><span class="k">hi</span> link htmlH5 htmlH1</div><div class='line' id='LC158'><span class="k">hi</span> link htmlH6 htmlH1</div><div class='line' id='LC159'><br/></div><div class='line' id='LC160'><span class="c">&quot; JavaScript: {{{1</span></div><div class='line' id='LC161'><span class="k">hi</span> javaScriptFunction  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC162'><span class="k">hi</span> javaScriptFuncName  guifg<span class="p">=</span><span class="mh">#318495</span> ctermfg<span class="p">=</span><span class="m">66</span> <span class="k">gui</span><span class="p">=</span><span class="nb">italic</span></div><div class='line' id='LC163'><span class="k">hi</span> javaScriptLabel  guifg<span class="p">=</span>#<span class="m">0000</span>A<span class="m">2</span> ctermfg<span class="p">=</span><span class="m">19</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC164'><span class="k">hi</span> javaScriptRailsFunction  guifg<span class="p">=</span>#<span class="m">3</span>C<span class="m">4</span>C<span class="m">72</span> ctermfg<span class="p">=</span><span class="m">240</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC165'><span class="k">hi</span> javaScriptType  guifg<span class="p">=</span><span class="mh">#318495</span> ctermfg<span class="p">=</span><span class="m">66</span> <span class="k">gui</span><span class="p">=</span>none</div><div class='line' id='LC166'><span class="k">hi</span> javaScriptArgument  guifg<span class="p">=</span><span class="mh">#318495</span> ctermfg<span class="p">=</span><span class="m">66</span> <span class="k">gui</span><span class="p">=</span><span class="nb">italic</span></div><div class='line' id='LC167'><span class="k">hi</span> javaScriptRegexpString  guifg<span class="p">=</span>#E18AC7 ctermfg<span class="p">=</span><span class="m">176</span> <span class="k">gui</span><span class="p">=</span><span class="nb">NONE</span></div><div class='line' id='LC168'><span class="k">hi</span> javaScriptSpecial  guifg<span class="p">=</span>#<span class="m">00</span>BC<span class="m">41</span> ctermfg<span class="p">=</span><span class="m">35</span> <span class="k">gui</span><span class="p">=</span><span class="nb">NONE</span></div><div class='line' id='LC169'><span class="c">&quot; NOTE: Syntax Highlighting for javascript doesn&#39;t match the</span></div><div class='line' id='LC170'><span class="c">&quot; TextMate version very accurately, because the javascript</span></div><div class='line' id='LC171'><span class="c">&quot; syntax file does not create matches for some items. In</span></div><div class='line' id='LC172'><span class="c">&quot; particular:</span></div><div class='line' id='LC173'><span class="c">&quot; * javaScriptArgument - e.g. function(argument)</span></div><div class='line' id='LC174'><span class="c">&quot; * javaScriptFuncName for object literal style functions - e.g.: </span></div><div class='line' id='LC175'><span class="c">&quot;     myFunction: function() { ... }</span></div><div class='line' id='LC176'><br/></div><div class='line' id='LC177'><span class="c">&quot; YAML: {{{1</span></div><div class='line' id='LC178'><span class="k">hi</span> yamlAnchor  guifg<span class="p">=</span><span class="mh">#318495</span> ctermfg<span class="p">=</span><span class="m">66</span></div><div class='line' id='LC179'><span class="k">hi</span> yamlAlias  guifg<span class="p">=</span><span class="mh">#318495</span> ctermfg<span class="p">=</span><span class="m">66</span></div><div class='line' id='LC180'><span class="k">hi</span> yamlDocumentHeader  guibg<span class="p">=</span>#F2F2F2 ctermbg<span class="p">=</span><span class="m">7</span></div><div class='line' id='LC181'><br/></div><div class='line' id='LC182'><span class="c">&quot; CSS: {{{1</span></div><div class='line' id='LC183'><span class="k">hi</span> cssTagName  <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC184'><span class="k">hi</span> cssIdentifier  <span class="k">gui</span><span class="p">=</span><span class="nb">italic</span></div><div class='line' id='LC185'><span class="k">hi</span> link cssClassName cssIdentifier</div><div class='line' id='LC186'><span class="k">hi</span> cssDefinition  guifg<span class="p">=</span>#<span class="m">6</span>E<span class="m">79</span>F<span class="m">1</span> ctermfg<span class="p">=</span><span class="m">69</span></div><div class='line' id='LC187'><span class="k">hi</span> link cssRenderProp cssDefinition</div><div class='line' id='LC188'><span class="k">hi</span> link cssTextProp cssDefinition</div><div class='line' id='LC189'><span class="k">hi</span> link cssFontProp cssDefinition</div><div class='line' id='LC190'><span class="k">hi</span> link cssColorProp cssDefinition</div><div class='line' id='LC191'><span class="k">hi</span> link cssBoxProp cssDefinition</div><div class='line' id='LC192'><span class="k">hi</span> link cssGeneratedContentProp cssDefinition</div><div class='line' id='LC193'><span class="k">hi</span> link cssUIProp cssDefinition</div><div class='line' id='LC194'><span class="k">hi</span> cssCommonAttr  guifg<span class="p">=</span>#<span class="m">00</span>BC<span class="m">41</span> ctermfg<span class="p">=</span><span class="m">35</span></div><div class='line' id='LC195'><span class="k">hi</span> link cssAttr cssCommonAttr</div><div class='line' id='LC196'><span class="k">hi</span> link cssRenderAttr cssCommonAttr</div><div class='line' id='LC197'><span class="k">hi</span> link cssTextAttr cssCommonAttr</div><div class='line' id='LC198'><span class="k">hi</span> link cssFontAttr cssCommonAttr</div><div class='line' id='LC199'><span class="k">hi</span> link cssGeneratedContentAttr cssCommonAttr</div><div class='line' id='LC200'><span class="k">hi</span> cssURL  guifg<span class="p">=</span>#<span class="m">007</span>B<span class="m">22</span> ctermfg<span class="p">=</span><span class="m">28</span></div><div class='line' id='LC201'><span class="k">hi</span> cssFunctionName  guifg<span class="p">=</span>#<span class="m">3</span>C<span class="m">4</span>C<span class="m">72</span> ctermfg<span class="p">=</span><span class="m">240</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC202'><span class="k">hi</span> cssColor  guifg<span class="p">=</span>#D51015 ctermfg<span class="p">=</span><span class="m">160</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC203'><span class="k">hi</span> cssValueLength  guifg<span class="p">=</span>#<span class="m">0000</span>A<span class="m">2</span> ctermfg<span class="p">=</span><span class="m">19</span></div><div class='line' id='LC204'><span class="k">hi</span> cssImportant  guifg<span class="p">=</span>#<span class="m">1</span>E<span class="m">39</span>F<span class="m">6</span> ctermfg<span class="p">=</span><span class="m">27</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC205'><br/></div><div class='line' id='LC206'><span class="c">&quot; Vimscript: {{{1</span></div><div class='line' id='LC207'><span class="k">hi</span> vimGroup  guifg<span class="p">=</span>#<span class="m">007</span>B<span class="m">22</span> ctermfg<span class="p">=</span><span class="m">28</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC208'><span class="k">hi</span> link vimHiGroup vimGroup</div><div class='line' id='LC209'><span class="k">hi</span> vimCommentTitle  guifg<span class="p">=</span>#<span class="m">3</span>C<span class="m">4</span>C<span class="m">72</span> ctermfg<span class="p">=</span><span class="m">240</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC210'><span class="k">hi</span> helpSpecial guifg<span class="p">=</span>#<span class="m">6</span>E<span class="m">79</span>F<span class="m">1</span> ctermfg<span class="p">=</span><span class="m">69</span></div><div class='line' id='LC211'><br/></div><div class='line' id='LC212'><span class="c">&quot; Markdown: {{{1</span></div><div class='line' id='LC213'><span class="k">hi</span> markdownBold <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC214'><span class="k">hi</span> markdownItalic <span class="k">gui</span><span class="p">=</span><span class="nb">italic</span></div><div class='line' id='LC215'><span class="k">hi</span> markdownCode  guifg<span class="p">=</span>#<span class="m">007</span>B<span class="m">22</span> ctermfg<span class="p">=</span><span class="m">28</span></div><div class='line' id='LC216'><span class="k">hi</span> link markdownCodeBlock markdownCode</div><div class='line' id='LC217'><br/></div><div class='line' id='LC218'><span class="c">&quot; Outliner: {{{1</span></div><div class='line' id='LC219'><span class="k">hi</span> BT1 guifg<span class="p">=</span><span class="mh">#808080</span> ctermfg<span class="p">=</span><span class="m">244</span> <span class="k">gui</span><span class="p">=</span><span class="nb">italic</span></div><div class='line' id='LC220'><span class="k">hi</span> OL1 guifg<span class="p">=</span><span class="mh">#000000</span> ctermfg<span class="p">=</span><span class="m">0</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC221'><span class="k">hi</span> OL2 guifg<span class="p">=</span>#<span class="m">0000</span>A<span class="m">2</span> ctermfg<span class="p">=</span><span class="m">19</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC222'><span class="k">hi</span> OL3 guifg<span class="p">=</span>#<span class="m">007</span>B<span class="m">22</span> ctermfg<span class="p">=</span><span class="m">28</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC223'><span class="k">hi</span> OL4 guifg<span class="p">=</span>#<span class="m">6</span>E<span class="m">79</span>F<span class="m">1</span> ctermfg<span class="p">=</span><span class="m">69</span> <span class="k">gui</span><span class="p">=</span><span class="nb">NONE</span></div><div class='line' id='LC224'><span class="c">&quot; Modelines: {{{1</span></div><div class='line' id='LC225'><span class="c">&quot; vim: nowrap fdm=marker</span></div><div class='line' id='LC226'><span class="c">&quot; }}}</span></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>
      </div>
    </div>
</div>

<div class="frame frame-loading large-loading-area" style="display:none;">
  <img src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-128.gif?1347543527" height="64" width="64">
</div>

        </div>
      </div>
      <div class="context-overlay"></div>
    </div>

      <div id="footer-push"></div><!-- hack for sticky footer -->
    </div><!-- end of wrapper - hack for sticky footer -->

      <!-- footer -->
      <div id="footer" >
        
  <div class="upper_footer">
     <div class="container clearfix">

       <h4 id="blacktocat">GitHub Links</h4>

       <ul class="footer_nav">
         <h4>GitHub</h4>
         <li><a href="https://github.com/about">About</a></li>
         <li><a href="https://github.com/blog">Blog</a></li>
         <li><a href="https://github.com/features">Features</a></li>
         <li><a href="https://github.com/contact">Contact &amp; Support</a></li>
         <li><a href="http://training.github.com/">Training</a></li>
         <li><a href="http://enterprise.github.com/">GitHub Enterprise</a></li>
         <li><a href="http://status.github.com/">Site Status</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Clients</h4>
         <li><a href="http://mac.github.com/">GitHub for Mac</a></li>
         <li><a href="http://windows.github.com/">GitHub for Windows</a></li>
         <li><a href="http://eclipse.github.com/">GitHub for Eclipse</a></li>
         <li><a href="http://mobile.github.com/">GitHub Mobile Apps</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Tools</h4>
         <li><a href="http://get.gaug.es/">Gauges: Web analytics</a></li>
         <li><a href="http://speakerdeck.com">Speaker Deck: Presentations</a></li>
         <li><a href="https://gist.github.com">Gist: Code snippets</a></li>

         <h4 class="second">Extras</h4>
         <li><a href="http://jobs.github.com/">Job Board</a></li>
         <li><a href="http://shop.github.com/">GitHub Shop</a></li>
         <li><a href="http://octodex.github.com/">The Octodex</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Documentation</h4>
         <li><a href="http://help.github.com/">GitHub Help</a></li>
         <li><a href="http://developer.github.com/">Developer API</a></li>
         <li><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></li>
         <li><a href="http://pages.github.com/">GitHub Pages</a></li>
       </ul>

     </div><!-- /.site -->
  </div><!-- /.upper_footer -->

<div class="lower_footer">
  <div class="container clearfix">
    <div id="legal">
      <ul>
          <li><a href="https://github.com/site/terms">Terms of Service</a></li>
          <li><a href="https://github.com/site/privacy">Privacy</a></li>
          <li><a href="https://github.com/security">Security</a></li>
      </ul>

      <p>&copy; 2012 <span title="0.06957s from fe2.rs.github.com">GitHub</span> Inc. All rights reserved.</p>
    </div><!-- /#legal or /#legal_ie-->

  </div><!-- /.site -->
</div><!-- /.lower_footer -->


      </div><!-- /#footer -->

    

<div id="keyboard_shortcuts_pane" class="instapaper_ignore readability-extra" style="display:none">
  <h2>Keyboard Shortcuts <small><a href="#" class="js-see-all-keyboard-shortcuts">(see all)</a></small></h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus command bar</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column middle" style='display:none'>
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>y</dt>
        <dd>Expand URL to its canonical form</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column last js-hidden-pane" style='display:none'>
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
        <dd>Submit comment</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> shift p</dt>
        <dd>Preview comment</dd>
      </dl>
    </div><!-- /.columns.last -->

  </div><!-- /.columns.equacols -->

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>

    <h3>Issues</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>x</dt>
          <dd>Toggle selection</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
          <dd>Submit comment</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> shift p</dt>
          <dd>Preview comment</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>c</dt>
          <dd>Create issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Create label</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>i</dt>
          <dd>Back to inbox</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>u</dt>
          <dd>Back to issues</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>/</dt>
          <dd>Focus issues search</dd>
        </dl>
      </div>
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>

    <h3>Issues Dashboard</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>

    <h3>Network Graph</h3>
    <div class="columns equacols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt><span class="badmono">←</span> <em>or</em> h</dt>
          <dd>Scroll left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">→</span> <em>or</em> l</dt>
          <dd>Scroll right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↑</span> <em>or</em> k</dt>
          <dd>Scroll up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↓</span> <em>or</em> j</dt>
          <dd>Scroll down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Toggle visibility of head labels</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">←</span> <em>or</em> shift h</dt>
          <dd>Scroll all the way left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">→</span> <em>or</em> shift l</dt>
          <dd>Scroll all the way right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↑</span> <em>or</em> shift k</dt>
          <dd>Scroll all the way up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↓</span> <em>or</em> shift j</dt>
          <dd>Scroll all the way down</dd>
        </dl>
      </div><!-- /.column.last -->
    </div>
  </div>

  <div class="js-hidden-pane" >
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first js-hidden-pane" >
        <h3>Source Code Browsing</h3>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Activates the file finder</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Jump to line</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>w</dt>
          <dd>Switch branch/tag</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Expand URL to its canonical form</dd>
        </dl>
      </div>
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first">
        <h3>Browsing Commits</h3>
        <dl class="keyboard-mappings">
          <dt><span class="platform-mac">⌘</span><span class="platform-other">ctrl</span> <em>+</em> enter</dt>
          <dd>Submit comment</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>escape</dt>
          <dd>Close form</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>p</dt>
          <dd>Parent commit</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o</dt>
          <dd>Other parent commit</dd>
        </dl>
      </div>
    </div>
  </div>

  <div class="js-hidden-pane" style='display:none'>
    <div class="rule"></div>
    <h3>Notifications</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open notification</dd>
        </dl>
      </div><!-- /.column.first -->

      <div class="column second">
        <dl class="keyboard-mappings">
          <dt>e <em>or</em> shift i <em>or</em> y</dt>
          <dd>Mark as read</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift m</dt>
          <dd>Mute thread</dd>
        </dl>
      </div><!-- /.column.first -->
    </div>
  </div>

</div>

    <div id="markdown-help" class="instapaper_ignore readability-extra">
  <h2>Markdown Cheat Sheet</h2>

  <div class="cheatsheet-content">

  <div class="mod">
    <div class="col">
      <h3>Format Text</h3>
      <p>Headers</p>
      <pre>
# This is an &lt;h1&gt; tag
## This is an &lt;h2&gt; tag
###### This is an &lt;h6&gt; tag</pre>
     <p>Text styles</p>
     <pre>
*This text will be italic*
_This will also be italic_
**This text will be bold**
__This will also be bold__

*You **can** combine them*
</pre>
    </div>
    <div class="col">
      <h3>Lists</h3>
      <p>Unordered</p>
      <pre>
* Item 1
* Item 2
  * Item 2a
  * Item 2b</pre>
     <p>Ordered</p>
     <pre>
1. Item 1
2. Item 2
3. Item 3
   * Item 3a
   * Item 3b</pre>
    </div>
    <div class="col">
      <h3>Miscellaneous</h3>
      <p>Images</p>
      <pre>
![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)
</pre>
     <p>Links</p>
     <pre>
http://github.com - automatic!
[GitHub](http://github.com)</pre>
<p>Blockquotes</p>
     <pre>
As Kanye West said:

> We're living the future so
> the present is our past.
</pre>
    </div>
  </div>
  <div class="rule"></div>

  <h3>Code Examples in Markdown</h3>
  <div class="col">
      <p>Syntax highlighting with <a href="http://github.github.com/github-flavored-markdown/" title="GitHub Flavored Markdown" target="_blank">GFM</a></p>
      <pre>
```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```</pre>
    </div>
    <div class="col">
      <p>Or, indent your code 4 spaces</p>
      <pre>
Here is a Python code example
without syntax highlighting:

    def foo:
      if not bar:
        return true</pre>
    </div>
    <div class="col">
      <p>Inline code for comments</p>
      <pre>
I think you should use an
`&lt;addr&gt;` element here instead.</pre>
    </div>
  </div>

  </div>
</div>


    <div id="ajax-error-message" class="flash flash-error">
      <span class="mini-icon mini-icon-exclamation"></span>
      Something went wrong with that request. Please try again.
      <a href="#" class="mini-icon mini-icon-remove-close ajax-error-dismiss"></a>
    </div>

    <div id="logo-popup">
      <h2>Looking for the GitHub logo?</h2>
      <ul>
        <li>
          <h4>GitHub Logo</h4>
          <a href="http://github-media-downloads.s3.amazonaws.com/GitHub_Logos.zip"><img alt="Github_logo" src="https://a248.e.akamai.net/assets.github.com/images/modules/about_page/github_logo.png?1338945074" /></a>
          <a href="http://github-media-downloads.s3.amazonaws.com/GitHub_Logos.zip" class="minibutton download">Download</a>
        </li>
        <li>
          <h4>The Octocat</h4>
          <a href="http://github-media-downloads.s3.amazonaws.com/Octocats.zip"><img alt="Octocat" src="https://a248.e.akamai.net/assets.github.com/images/modules/about_page/octocat.png?1338945074" /></a>
          <a href="http://github-media-downloads.s3.amazonaws.com/Octocats.zip" class="minibutton download">Download</a>
        </li>
      </ul>
    </div>

    
    
    <span id='server_response_time' data-time='0.07134' data-host='fe2'></span>
    
  </body>
</html>

