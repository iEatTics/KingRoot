.class Lcom/kingroot/kinguser/alj$g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alj$g;-><init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axA:Lcom/kingroot/kinguser/alj;

.field final synthetic axJ:Lcom/kingroot/kinguser/alj$g;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj$g;Lcom/kingroot/kinguser/alj;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$g$1;->axJ:Lcom/kingroot/kinguser/alj$g;

    iput-object p2, p0, Lcom/kingroot/kinguser/alj$g$1;->axA:Lcom/kingroot/kinguser/alj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$g$1;->axJ:Lcom/kingroot/kinguser/alj$g;

    invoke-static {v0}, Lcom/kingroot/kinguser/alj$g;->a(Lcom/kingroot/kinguser/alj$g;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Bm()V

    .line 732
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$g$1;->axJ:Lcom/kingroot/kinguser/alj$g;

    iget-object v0, v0, Lcom/kingroot/kinguser/alj$g;->axi:Lcom/kingroot/kinguser/alj;

    invoke-static {v0}, Lcom/kingroot/kinguser/alj;->b(Lcom/kingroot/kinguser/alj;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/ReserveActivity;->aK(Landroid/content/Context;)V

    .line 733
    return-void
.end method
