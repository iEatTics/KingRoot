.class Lcom/kingroot/kinguser/cep$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic bYA:Lcom/kingroot/kinguser/cep;

.field public bYH:Lcom/kingroot/kinguser/cff$d;

.field public bYI:Lcom/kingroot/kinguser/ceo$a;

.field public data:[B


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/cep;[BLcom/kingroot/kinguser/cff$d;Lcom/kingroot/kinguser/ceo$a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    iput-object p1, p0, Lcom/kingroot/kinguser/cep$a;->bYA:Lcom/kingroot/kinguser/cep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/kingroot/kinguser/cep$a;->data:[B

    .line 41
    iput-object v0, p0, Lcom/kingroot/kinguser/cep$a;->bYH:Lcom/kingroot/kinguser/cff$d;

    .line 42
    iput-object v0, p0, Lcom/kingroot/kinguser/cep$a;->bYI:Lcom/kingroot/kinguser/ceo$a;

    .line 44
    iput-object p2, p0, Lcom/kingroot/kinguser/cep$a;->data:[B

    .line 45
    iput-object p3, p0, Lcom/kingroot/kinguser/cep$a;->bYH:Lcom/kingroot/kinguser/cff$d;

    .line 46
    iput-object p4, p0, Lcom/kingroot/kinguser/cep$a;->bYI:Lcom/kingroot/kinguser/ceo$a;

    .line 47
    return-void
.end method
