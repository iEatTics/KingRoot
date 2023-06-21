.class public Lcom/kingroot/kinguser/bji;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private bwQ:Z

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private itemView:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/kingroot/kinguser/bji;->data:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public L(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/kingroot/kinguser/bji;->itemView:Landroid/view/View;

    .line 21
    return-void
.end method

.method public adU()Landroid/view/View;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kingroot/kinguser/bji;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/bji;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bji;->bwQ:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bji;->bwQ:Z

    .line 37
    return-void
.end method
