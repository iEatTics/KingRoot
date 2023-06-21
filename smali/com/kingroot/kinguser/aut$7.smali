.class final Lcom/kingroot/kinguser/aut$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aut;->bv(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingroot/kinguser/bcy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bcy;Lcom/kingroot/kinguser/bcy;)I
    .locals 2

    .prologue
    .line 1221
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bcy;->Yo()I

    move-result v0

    invoke-virtual {p2}, Lcom/kingroot/kinguser/bcy;->Yo()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1218
    check-cast p1, Lcom/kingroot/kinguser/bcy;

    check-cast p2, Lcom/kingroot/kinguser/bcy;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/aut$7;->a(Lcom/kingroot/kinguser/bcy;Lcom/kingroot/kinguser/bcy;)I

    move-result v0

    return v0
.end method
