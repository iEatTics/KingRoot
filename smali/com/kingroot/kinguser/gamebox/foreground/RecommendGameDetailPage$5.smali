.class public Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;
.super Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atn;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/atn;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5$1;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5$1;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method
