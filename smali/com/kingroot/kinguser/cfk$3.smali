.class final Lcom/kingroot/kinguser/cfk$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfk;->cx(Ljava/util/List;)V
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
        "Lcom/kingroot/kinguser/an;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/an;Lcom/kingroot/kinguser/an;)I
    .locals 2

    .prologue
    .line 447
    iget v0, p1, Lcom/kingroot/kinguser/an;->hv:I

    iget v1, p2, Lcom/kingroot/kinguser/an;->hv:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 444
    check-cast p1, Lcom/kingroot/kinguser/an;

    check-cast p2, Lcom/kingroot/kinguser/an;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/cfk$3;->a(Lcom/kingroot/kinguser/an;Lcom/kingroot/kinguser/an;)I

    move-result v0

    return v0
.end method
