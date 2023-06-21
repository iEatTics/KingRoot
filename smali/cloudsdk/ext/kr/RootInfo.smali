.class public Lcloudsdk/ext/kr/RootInfo;
.super Lcom/kingroot/kinguser/bmc;
.source "SourceFile"


# instance fields
.field private q:I

.field private s:Lcloudsdk/ext/kr/RootExtInfo;

.field private t:Lcloudsdk/ext/kr/RootExtInfo;


# direct methods
.method public constructor <init>(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bmc;-><init>(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getMobileRootInfo()Lcloudsdk/ext/kr/RootExtInfo;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcloudsdk/ext/kr/RootInfo;->s:Lcloudsdk/ext/kr/RootExtInfo;

    return-object v0
.end method

.method public getPcRootInfo()Lcloudsdk/ext/kr/RootExtInfo;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcloudsdk/ext/kr/RootInfo;->t:Lcloudsdk/ext/kr/RootExtInfo;

    return-object v0
.end method

.method public getSolutionCount()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcloudsdk/ext/kr/RootInfo;->q:I

    return v0
.end method

.method public setMobileRootInfo(Lcloudsdk/ext/kr/RootExtInfo;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcloudsdk/ext/kr/RootInfo;->s:Lcloudsdk/ext/kr/RootExtInfo;

    .line 28
    return-void
.end method

.method public setPcRootInfo(Lcloudsdk/ext/kr/RootExtInfo;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcloudsdk/ext/kr/RootInfo;->t:Lcloudsdk/ext/kr/RootExtInfo;

    .line 36
    return-void
.end method

.method public setSolutionCount(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcloudsdk/ext/kr/RootInfo;->q:I

    .line 44
    return-void
.end method
