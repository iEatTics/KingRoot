.class Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13;->onCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bou:I

.field final synthetic bov:Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13;I)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13$1;->bov:Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13;

    iput p2, p0, Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13$1;->bou:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13$1;->bov:Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13;

    iget-object v1, v0, Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13;->this$0:Lcom/kingroot/kinguser/bga;

    iget v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13$1;->bou:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bga;->e(Lcom/kingroot/kinguser/bga;Z)V

    .line 644
    return-void

    .line 643
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
