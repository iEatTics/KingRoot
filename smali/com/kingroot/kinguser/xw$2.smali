.class final Lcom/kingroot/kinguser/xw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/xv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/xw;->a(Landroid/support/v7/widget/GridLayoutManager;)Lcom/kingroot/kinguser/xv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic UN:Landroid/support/v7/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/kingroot/kinguser/xw$2;->UN:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bT(I)I
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/xw$2;->UN:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/xw$2;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/xw$2;->UN:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    return v0
.end method

.method public getSpanSize(I)I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/xw$2;->UN:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    return v0
.end method
