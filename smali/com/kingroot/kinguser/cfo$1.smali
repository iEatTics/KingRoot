.class Lcom/kingroot/kinguser/cfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingroot/kinguser/cfo$f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cdp:Lcom/kingroot/kinguser/cfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfo;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/kingroot/kinguser/cfo$1;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/cfo$f;Lcom/kingroot/kinguser/cfo$f;)I
    .locals 2

    .prologue
    .line 141
    iget v0, p2, Lcom/kingroot/kinguser/cfo$f;->flag:I

    invoke-static {v0}, Lcom/kingroot/kinguser/ccm;->kU(I)I

    move-result v0

    iget v1, p1, Lcom/kingroot/kinguser/cfo$f;->flag:I

    invoke-static {v1}, Lcom/kingroot/kinguser/ccm;->kU(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 137
    check-cast p1, Lcom/kingroot/kinguser/cfo$f;

    check-cast p2, Lcom/kingroot/kinguser/cfo$f;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/cfo$1;->a(Lcom/kingroot/kinguser/cfo$f;Lcom/kingroot/kinguser/cfo$f;)I

    move-result v0

    return v0
.end method
