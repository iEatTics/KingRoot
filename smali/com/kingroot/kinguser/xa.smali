.class public abstract Lcom/kingroot/kinguser/xa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TK:I

.field private TL:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/kingroot/kinguser/xa;->TK:I

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/xa;->TL:J

    .line 10
    return-void
.end method


# virtual methods
.method public abstract j(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 19
    iget-wide v2, p0, Lcom/kingroot/kinguser/xa;->TL:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/kingroot/kinguser/xa;->TK:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 20
    iput-wide v0, p0, Lcom/kingroot/kinguser/xa;->TL:J

    .line 21
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/xa;->j(Landroid/view/View;)V

    .line 23
    :cond_0
    return-void
.end method
