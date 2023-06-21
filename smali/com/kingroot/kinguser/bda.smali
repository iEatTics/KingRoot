.class public Lcom/kingroot/kinguser/bda;
.super Lcom/kingroot/kinguser/bcz;
.source "SourceFile"


# instance fields
.field private biI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private biJ:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcz;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bda;->biI:Ljava/util/List;

    .line 21
    iput-object p1, p0, Lcom/kingroot/kinguser/bda;->biI:Ljava/util/List;

    .line 22
    iput p2, p0, Lcom/kingroot/kinguser/bda;->biJ:I

    .line 23
    return-void
.end method


# virtual methods
.method public Mq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/bda;->biI:Ljava/util/List;

    return-object v0
.end method

.method public Yo()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public Yp()I
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x8

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/kingroot/kinguser/bda;->biJ:I

    return v0
.end method
