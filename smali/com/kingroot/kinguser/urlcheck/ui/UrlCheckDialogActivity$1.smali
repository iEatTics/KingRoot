.class Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 74
    iput-object p1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$1;->bnF:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$1;->bnF:Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->finish()V

    .line 78
    return-void
.end method
