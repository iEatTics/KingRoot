.class Lcom/kingroot/kinguser/bfk$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bwi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfk;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmQ:Lcom/kingroot/kinguser/bfk;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfk;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kingroot/kinguser/bfk$2;->bmQ:Lcom/kingroot/kinguser/bfk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILcom/kingroot/kinguser/byi;)Z
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/bfj;->ZX()Lcom/kingroot/kinguser/bfj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bfj;->ix(I)I

    move-result v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/bfj;->ZX()Lcom/kingroot/kinguser/bfj;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/kingroot/kinguser/bfj;->aj(II)V

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/bfk$2;->bmQ:Lcom/kingroot/kinguser/bfk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfk;->aaf()V

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onFailed(I)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
