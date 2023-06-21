.class Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$4;
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


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$4;->bnF:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1895a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckRiskActivity;->aL(Landroid/content/Context;)V

    .line 184
    return-void
.end method
