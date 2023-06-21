.class final Lcom/kingroot/kinguser/aut$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aut;->bw(Ljava/util/List;)V
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
        "Lcom/kingroot/kinguser/bde;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bde;Lcom/kingroot/kinguser/bde;)I
    .locals 4

    .prologue
    .line 1230
    invoke-virtual {p2}, Lcom/kingroot/kinguser/bde;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bde;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1227
    check-cast p1, Lcom/kingroot/kinguser/bde;

    check-cast p2, Lcom/kingroot/kinguser/bde;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/aut$8;->a(Lcom/kingroot/kinguser/bde;Lcom/kingroot/kinguser/bde;)I

    move-result v0

    return v0
.end method
