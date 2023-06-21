.class public interface abstract Lcom/kingroot/kinguser/root/mgr/IRootManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/root/mgr/IRootManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract addAppRulesChangeListener(Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;)V
.end method

.method public abstract addAskRule(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract addDenyRule(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract addRule(JLjava/lang/String;Ljava/lang/String;IJ)V
.end method

.method public abstract checkAppRules()V
.end method

.method public abstract deleteRule(Ljava/lang/String;)V
.end method

.method public abstract doActionForCallingUid(IIZ)V
.end method

.method public abstract getAllAppRuleList()Ljava/util/Map;
.end method

.method public abstract getAllAppsInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/model/RootMgrAppModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllowAppRuleList()Ljava/util/Map;
.end method

.method public abstract getDenyAppRuleList()Ljava/util/Map;
.end method

.method public abstract getRuleType(Ljava/lang/String;)I
.end method

.method public abstract inDenyRuleList(Ljava/lang/String;)Z
.end method

.method public abstract removeAppRulesChangeListener(Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;)V
.end method

.method public abstract rootMgrToast(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSuRequestPromptLive(Z)V
.end method

.method public abstract startPrepareRootMgrList()V
.end method

.method public abstract startPrepareRootMgrListWhenInstall(Ljava/lang/String;)V
.end method

.method public abstract startPrepareRootMgrSuggestion()V
.end method

.method public abstract triggerSuRequestPrompt()V
.end method

.method public abstract updateRule(Ljava/lang/String;IJ)V
.end method
