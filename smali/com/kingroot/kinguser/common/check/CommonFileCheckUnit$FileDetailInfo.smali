.class public Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDetailInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public WN:I

.field public WO:I

.field public WP:Ljava/lang/String;

.field public atl:I

.field public atm:I

.field public atn:I

.field public ato:Z

.field public atp:Z

.field public atq:Ljava/lang/String;

.field public atr:Ljava/lang/String;

.field public mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 392
    new-instance v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atn:I

    .line 355
    iput p1, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->WN:I

    .line 356
    iput p2, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->WO:I

    .line 357
    iput p3, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->mode:I

    .line 358
    iput p4, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atl:I

    .line 359
    iput p5, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atm:I

    .line 360
    iput p6, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atn:I

    .line 361
    iput-boolean p7, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atp:Z

    .line 362
    iput-boolean p8, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->ato:Z

    .line 363
    iput-object p9, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->WP:Ljava/lang/String;

    .line 364
    iput-object p10, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atq:Ljava/lang/String;

    .line 365
    iput-object p11, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    .line 366
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    iget v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->WN:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->WO:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atp:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 386
    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->ato:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->WP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    return-void

    :cond_0
    move v0, v2

    .line 385
    goto :goto_0

    :cond_1
    move v1, v2

    .line 386
    goto :goto_1
.end method
