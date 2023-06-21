.class Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bnH:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5$1;->bnH:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5$1;->bnH:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5;

    iget-object v1, v1, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    iget-object v1, v1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->GY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfs;->lh(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5$1;->bnH:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5;

    iget-object v1, v1, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfs;->d(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5$1;->bnH:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->dQ(Z)V

    .line 214
    return-void
.end method
