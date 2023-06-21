.class public Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;
.super Lcom/kingroot/kinguser/common/check/BaseSuCheckUnit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private akz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private atf:Z

.field private atg:Z

.field private ath:I

.field private ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

.field private atj:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 439
    new-instance v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$2;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/common/check/BaseSuCheckUnit;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atf:Z

    .line 39
    iput-boolean v1, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atg:Z

    .line 42
    iput v1, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ath:I

    .line 51
    iput-object p1, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;Landroid/os/IBinder;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/kingroot/kinguser/common/check/BaseSuCheckUnit;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atf:Z

    .line 39
    iput-boolean v1, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atg:Z

    .line 42
    iput v1, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ath:I

    .line 63
    iput-object p1, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    .line 64
    iput-boolean p3, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atg:Z

    .line 65
    if-eqz p3, :cond_1

    .line 66
    iput-object p2, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atj:Landroid/os/IBinder;

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    if-eqz p2, :cond_0

    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->akz:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ath:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atf:Z

    return v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ath:I

    return v0
.end method

.method private zc()Lcom/kingroot/kinguser/common/check/ICheckUnitListener;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->akz:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->akz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/ICheckUnitListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/common/check/ICheckUnitListener;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public d(ZZ)Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 92
    iput-boolean v1, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atf:Z

    .line 93
    iput v2, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ath:I

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->ato:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/kingroot/kinguser/abf;->qP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    iget v0, v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atl:I

    if-eq v0, v4, :cond_3

    .line 107
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    iget-object v3, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    iget v3, v3, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atl:I

    if-lt v0, v3, :cond_0

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    iget v0, v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atm:I

    if-eq v0, v4, :cond_4

    .line 111
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    iget-object v3, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    iget v3, v3, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atm:I

    if-gt v0, v3, :cond_0

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atq:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    iget-object v3, v3, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/zn;->H(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 117
    const/4 v3, -0x3

    if-eq v3, v0, :cond_0

    const/4 v3, -0x4

    if-eq v3, v0, :cond_0

    .line 124
    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atf:Z

    .line 127
    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atf:Z

    if-eqz v0, :cond_7

    .line 129
    new-instance v0, Lcom/kingroot/kinguser/zn$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/zn$a;-><init>()V

    .line 130
    iget-object v3, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    iget v3, v3, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->WN:I

    iput v3, v0, Lcom/kingroot/kinguser/zn$a;->WN:I

    .line 131
    iget-object v3, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    iget v3, v3, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->WO:I

    iput v3, v0, Lcom/kingroot/kinguser/zn$a;->WO:I

    .line 132
    iget-object v3, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    iget v3, v3, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->mode:I

    iput v3, v0, Lcom/kingroot/kinguser/zn$a;->mode:I

    .line 133
    iget-object v3, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    iget-object v3, v3, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->WP:Ljava/lang/String;

    iput-object v3, v0, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    .line 134
    iget-object v3, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    iget-object v3, v3, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atr:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/kingroot/kinguser/zn;->a(Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ath:I

    .line 141
    :goto_2
    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atf:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ath:I

    if-eqz v0, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v2

    .line 124
    goto :goto_1

    .line 137
    :cond_7
    const/16 v0, 0xf

    iput v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ath:I

    goto :goto_2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 435
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atj:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 436
    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atg:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 437
    return-void

    .line 436
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public yQ()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    if-nez v0, :cond_1

    move v0, v1

    .line 322
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$1;-><init>(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;)V

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 309
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->zc()Lcom/kingroot/kinguser/common/check/ICheckUnitListener;

    move-result-object v4

    .line 310
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 311
    const-string v3, "bundle_key_is_content_right"

    invoke-virtual {p0}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->zd()Z

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 312
    if-eqz v4, :cond_2

    .line 313
    if-eqz v0, :cond_3

    move v3, v1

    :goto_1
    invoke-interface {v4, v5, v3}, Lcom/kingroot/kinguser/common/check/ICheckUnitListener;->onCheckEvent(Landroid/os/Bundle;I)V

    .line 315
    :cond_2
    iget-object v3, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atj:Landroid/os/IBinder;

    if-eqz v3, :cond_0

    .line 316
    iget-object v3, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atj:Landroid/os/IBinder;

    invoke-static {v3}, Lcom/kingroot/kinguser/common/check/ICheckUnitListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/common/check/ICheckUnitListener;

    move-result-object v3

    if-eqz v0, :cond_4

    :goto_2
    invoke-interface {v3, v5, v1}, Lcom/kingroot/kinguser/common/check/ICheckUnitListener;->onCheckEvent(Landroid/os/Bundle;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    move v3, v2

    .line 313
    goto :goto_1

    :cond_4
    move v1, v2

    .line 316
    goto :goto_2
.end method

.method public zd()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->atf:Z

    return v0
.end method

.method public ze()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 419
    iget-object v1, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;->ati:Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    iget v1, v1, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;->atn:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 423
    :cond_0
    return v0
.end method
