.class Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bnF:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;

.field final synthetic bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$6;->bnF:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;

    iput-object p2, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$6;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 230
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18956

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 231
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$6;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    iget-object v1, v1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfw;->lk(Ljava/lang/String;)I

    move-result v0

    .line 232
    if-lez v0, :cond_0

    .line 234
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    new-instance v2, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$6$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$6$1;-><init>(Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$6;)V

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 244
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070512

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$6;->bnF:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->finish()V

    .line 250
    return-void

    .line 246
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$6;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    iget-object v1, v1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfw;->ll(Ljava/lang/String;)V

    goto :goto_0
.end method
