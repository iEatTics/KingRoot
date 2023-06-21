.class Lcom/kingroot/kinguser/awz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awz;
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
        "Lcom/kingroot/kinguser/agc$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aWn:Lcom/kingroot/kinguser/awz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awz;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kingroot/kinguser/awz$1;->aWn:Lcom/kingroot/kinguser/awz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/agc$c;Lcom/kingroot/kinguser/agc$c;)I
    .locals 4

    .prologue
    .line 56
    new-instance v0, Ljava/sql/Timestamp;

    iget-wide v2, p1, Lcom/kingroot/kinguser/agc$c;->mTime:J

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    .line 57
    new-instance v1, Ljava/sql/Timestamp;

    iget-wide v2, p2, Lcom/kingroot/kinguser/agc$c;->mTime:J

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    .line 59
    invoke-virtual {v1, v0}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 53
    check-cast p1, Lcom/kingroot/kinguser/agc$c;

    check-cast p2, Lcom/kingroot/kinguser/agc$c;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/awz$1;->a(Lcom/kingroot/kinguser/agc$c;Lcom/kingroot/kinguser/agc$c;)I

    move-result v0

    return v0
.end method
