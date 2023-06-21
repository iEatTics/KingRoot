.class public interface abstract Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V
.end method

.method public abstract deleteRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V
.end method

.method public abstract enable(ZLjava/util/Map;)I
.end method

.method public abstract getProxyServerPort()I
.end method

.method public abstract getSharkGuid()Ljava/lang/String;
.end method

.method public abstract isEnable()Z
.end method

.method public abstract syncCloudRuleList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract syncUserRuleList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V
.end method
