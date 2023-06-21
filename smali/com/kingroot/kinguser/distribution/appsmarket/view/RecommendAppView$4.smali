.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$4;
.super Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aof;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aof;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$4;->this$0:Lcom/kingroot/kinguser/aof;

    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$4$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$4$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$4;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method
