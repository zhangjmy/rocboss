<div class="side left">
        <div class="box">
          <div class="side-user">
            <div class="side-avatar">
              <img src="<!--{$userInfo['avatar']}-->" alt="<!--{$userInfo['username']}-->" class="avatar">
              <h4><!--{$userInfo['username']}--></h4>
              <div class="asmall"> <!--{$userInfo['groupname']}--></div>
            </div>
            <br>
            <p>用户积分：<!--{$userInfo['scores']}--></p>
            <p>注册时间：<!--{$userInfo['regtime']}--></p>
            <p>最后登录：<!--{$userInfo['lasttime']}--></p>
            <p>
                <!--{if $userInfo['signature'] != ''}-->个性签名：<!--{$userInfo['signature']}-->
                <!--{else}-->这个家伙太懒了，还没有个性签名~
                <!--{/if}-->
            </p>
          </div>
        <!--{if $userInfo['uid'] != $loginInfo['uid'] && $loginInfo['uid'] != 0}-->
          <div class="side-profile">
            <!--{if $userInfo['groupid'] < 9 && $loginInfo['groupid'] == 9}-->
                <a href="javascript:ban(<!--{$userInfo['uid']}-->, <!--{1-$userInfo['groupid']}-->);" class="btn" id="ban">
                    <!--{if $userInfo['groupid'] == 0}-->
                      <i class="icon icon-roundclosefill x2"></i> 解禁
                    <!--{else}-->
                      <i class="icon icon-roundclose x2"></i> 禁言
                    <!--{/if}-->
                </a>
            <!--{/if}-->
            <a href="javascript:follow(<!--{$userInfo['uid']}-->);" class="btn" id="follow">
                <!--{if $isFollow > 0}-->
                  <i class="icon icon-likefill x2"></i> 取消关注
                <!--{else}-->
                  <i class="icon icon-like x2"></i> 关注
                <!--{/if}-->
            </a>
            <a href="#" class="btn" id="whisper"><i class="icon icon-comment x2"></i> 私信</a>
          </div>
        <!--{/if}-->
        </div>
        <div class="box">
          <ul class="list-topic">
              <li<!--{if $RequestType == 'topic'}--> class="active"<!--{/if}-->>
                <a href="<!--{ROOT}-->user/index/uid/<!--{$userInfo['uid']}-->">
                    <!--{if $userInfo['uid'] != $loginInfo['uid']}-->TA<!--{else}-->我<!--{/if}-->的主题
                </a>
              </li>
              <li<!--{if $RequestType == 'reply'}--> class="active"<!--{/if}-->>
                <a href="<!--{ROOT}-->user/reply/uid/<!--{$userInfo['uid']}-->">
                    <!--{if $userInfo['uid'] != $loginInfo['uid']}-->TA<!--{else}-->我<!--{/if}-->的回复
                </a>
              </li>
              <li<!--{if $RequestType == 'follow'}--> class="active"<!--{/if}-->>
                <a href="<!--{ROOT}-->user/follow/uid/<!--{$userInfo['uid']}-->">
                    <!--{if $userInfo['uid'] != $loginInfo['uid']}-->TA<!--{else}-->我<!--{/if}-->的关注
                </a>
              </li>
              <li<!--{if $RequestType == 'fans'}--> class="active"<!--{/if}-->>
                <a href="<!--{ROOT}-->user/fans/uid/<!--{$userInfo['uid']}-->">
                    <!--{if $userInfo['uid'] != $loginInfo['uid']}-->TA<!--{else}-->我<!--{/if}-->的粉丝
                </a>
              </li>
              <!--{if $loginInfo['uid'] == $userInfo['uid'] }--> 
                  <li<!--{if $RequestType == 'favorite'}--> class="active"<!--{/if}-->>
                    <a href="<!--{ROOT}-->user/favorite/">
                        我的收藏
                    </a>
                  </li>
                  <li<!--{if $RequestType == 'score'}--> class="active"<!--{/if}-->>
                    <a href="<!--{ROOT}-->user/score/">
                        积分明细
                    </a>
                  </li>
              <!--{/if}-->
          </ul>
        </div>
    </div>
    