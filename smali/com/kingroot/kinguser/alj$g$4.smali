.class Lcom/kingroot/kinguser/alj$g$4;
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
    .line 754
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$g$4;->axJ:Lcom/kingroot/kinguser/alj$g;

    iput-object p2, p0, Lcom/kingroot/kinguser/alj$g$4;->axA:Lcom/kingroot/kinguser/alj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$g$4;->axJ:Lcom/kingroot/kinguser/alj$g;

    iget-object v0, v0, Lcom/kingroot/kinguser/alj$g;->axi:Lcom/kingroot/kinguser/alj;

    invoke-static {v0}, Lcom/kingroot/kinguser/alj;->b(Lcom/kingroot/kinguser/alj;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AppsMarketCategoryActivity;->aL(Landroid/content/Context;)V

    .line 758
    return-void
.end method
