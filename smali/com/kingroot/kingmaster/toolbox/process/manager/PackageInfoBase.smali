.class public Lcom/kingroot/kingmaster/toolbox/process/manager/PackageInfoBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kingmaster/toolbox/process/manager/PackageInfo;


# static fields
.field private static final serialVersionUID:J = 0x7ca50aacb98d9071L


# instance fields
.field public mChecked:Z

.field protected mCloudSuggestKeep:Z

.field protected mDescription:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field protected mInBlackList:Z

.field protected mInWhiteList:Z

.field protected mPackageName:Ljava/lang/String;

.field protected mProtected:Z

.field protected mSelected:Z

.field protected mSystem:Z

.field protected mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aB(Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/kingroot/kingmaster/toolbox/process/manager/PackageInfoBase;->mSystem:Z

    .line 126
    return-void
.end method

.method public aC(Z)V
    .locals 0

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/kingroot/kingmaster/toolbox/process/manager/PackageInfoBase;->mInWhiteList:Z

    .line 152
    return-void
.end method

.method public aD(Z)V
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/kingroot/kingmaster/toolbox/process/manager/PackageInfoBase;->mInBlackList:Z

    .line 168
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/process/manager/PackageInfoBase;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/process/manager/PackageInfoBase;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/process/manager/PackageInfoBase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isSystem()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/kingroot/kingmaster/toolbox/process/manager/PackageInfoBase;->mSystem:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/kingroot/kingmaster/toolbox/process/manager/PackageInfoBase;->mDescription:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public vk()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/kingroot/kingmaster/toolbox/process/manager/PackageInfoBase;->mInWhiteList:Z

    return v0
.end method

.method public vl()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/kingroot/kingmaster/toolbox/process/manager/PackageInfoBase;->mInBlackList:Z

    return v0
.end method
