.class Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bnJ:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7$1;->bnJ:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7$1;->bnJ:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    .line 264
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7$1;->bnJ:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7;

    iget-object v1, v1, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfs;->e(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7$1;->bnJ:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->dQ(Z)V

    .line 266
    return-void
.end method
