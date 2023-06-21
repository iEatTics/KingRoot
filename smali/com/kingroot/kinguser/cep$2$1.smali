.class Lcom/kingroot/kinguser/cep$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cep$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bYE:I

.field final synthetic bYF:[B

.field final synthetic bYG:Lcom/kingroot/kinguser/cep$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cep$2;I[B)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/kingroot/kinguser/cep$2$1;->bYG:Lcom/kingroot/kinguser/cep$2;

    iput p2, p0, Lcom/kingroot/kinguser/cep$2$1;->bYE:I

    iput-object p3, p0, Lcom/kingroot/kinguser/cep$2$1;->bYF:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/cep$2$1;->bYG:Lcom/kingroot/kinguser/cep$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cep$2;->bYD:Lcom/kingroot/kinguser/ceo$a;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/cep$2$1;->bYG:Lcom/kingroot/kinguser/cep$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cep$2;->bYD:Lcom/kingroot/kinguser/ceo$a;

    iget v1, p0, Lcom/kingroot/kinguser/cep$2$1;->bYE:I

    iget-object v2, p0, Lcom/kingroot/kinguser/cep$2$1;->bYF:[B

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/ceo$a;->a(I[B)V

    .line 128
    :cond_0
    return-void
.end method
