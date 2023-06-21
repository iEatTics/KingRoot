.class Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;
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
        "Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic buq:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$2;->buq:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;)I
    .locals 2

    .prologue
    .line 222
    iget v0, p1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->buv:I

    iget v1, p2, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->buv:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 219
    check-cast p1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    check-cast p2, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$2;->a(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;)I

    move-result v0

    return v0
.end method
