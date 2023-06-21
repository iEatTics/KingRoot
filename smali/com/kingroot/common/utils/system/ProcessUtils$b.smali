.class Lcom/kingroot/common/utils/system/ProcessUtils$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/utils/system/ProcessUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private YL:[I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    .prologue
    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kingroot/common/utils/system/ProcessUtils$b;->YL:[I

    .line 589
    iget-object v0, p0, Lcom/kingroot/common/utils/system/ProcessUtils$b;->YL:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 590
    iget-object v0, p0, Lcom/kingroot/common/utils/system/ProcessUtils$b;->YL:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 591
    iget-object v0, p0, Lcom/kingroot/common/utils/system/ProcessUtils$b;->YL:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 592
    iget-object v0, p0, Lcom/kingroot/common/utils/system/ProcessUtils$b;->YL:[I

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 593
    return-void
.end method


# virtual methods
.method public getIndex(I)I
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/kingroot/common/utils/system/ProcessUtils$b;->YL:[I

    aget v0, v0, p1

    return v0
.end method
