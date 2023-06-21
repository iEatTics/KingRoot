.class Lcom/kingroot/kinguser/aji$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aji;->b(Lcom/kingroot/kinguser/aji$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic atK:Lcom/kingroot/kinguser/aji$a;

.field final synthetic atL:Lcom/kingroot/kinguser/aji;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aji;Lcom/kingroot/kinguser/aji$a;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kingroot/kinguser/aji$1;->atL:Lcom/kingroot/kinguser/aji;

    iput-object p2, p0, Lcom/kingroot/kinguser/aji$1;->atK:Lcom/kingroot/kinguser/aji$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 58
    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aji$1;->atK:Lcom/kingroot/kinguser/aji$a;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/aji$1;->atK:Lcom/kingroot/kinguser/aji$a;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aji$a;->dR(I)V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    check-cast p5, Lcom/kingroot/kinguser/eo;

    .line 67
    if-eqz p5, :cond_3

    iget v0, p5, Lcom/kingroot/kinguser/eo;->ret:I

    if-eqz v0, :cond_4

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/aji$1;->atK:Lcom/kingroot/kinguser/aji$a;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/aji$1;->atK:Lcom/kingroot/kinguser/aji$a;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aji$a;->dR(I)V

    goto :goto_0

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/aji$1;->atK:Lcom/kingroot/kinguser/aji$a;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/aji$1;->atK:Lcom/kingroot/kinguser/aji$a;

    iget v1, p5, Lcom/kingroot/kinguser/eo;->pu:I

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aji$a;->dR(I)V

    goto :goto_0
.end method
