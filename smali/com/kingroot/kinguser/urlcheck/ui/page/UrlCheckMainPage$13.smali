.class public Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13;
.super Lcom/kingroot/kinguser/urlcheck/aidl/ICallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bga;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bga;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-direct {p0}, Lcom/kingroot/kinguser/urlcheck/aidl/ICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(I)V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bga;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13$1;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13$1;-><init>(Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 646
    return-void
.end method
