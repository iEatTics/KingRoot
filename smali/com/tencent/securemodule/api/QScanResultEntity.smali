.class public Lcom/tencent/securemodule/api/QScanResultEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public category:I

.field public isInPayList:Z

.field public isInStealAccountList:Z

.field public official:I

.field public officialCertMd5:Ljava/lang/String;

.field public officialPkgName:Ljava/lang/String;

.field public product:I

.field public riskDescription:Ljava/lang/String;

.field public riskName:Ljava/lang/String;

.field public safeLevel:I

.field public safeType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public virusId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/securemodule/api/QScanResultEntity;->category:I

    iput v0, p0, Lcom/tencent/securemodule/api/QScanResultEntity;->official:I

    iput-boolean v0, p0, Lcom/tencent/securemodule/api/QScanResultEntity;->isInPayList:Z

    iput-boolean v0, p0, Lcom/tencent/securemodule/api/QScanResultEntity;->isInStealAccountList:Z

    iput v0, p0, Lcom/tencent/securemodule/api/QScanResultEntity;->product:I

    return-void
.end method
