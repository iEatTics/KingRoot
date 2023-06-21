.class public final Lcom/kingroot/kinguser/bmh;
.super Lcom/kingroot/kinguser/bmc;
.source "SourceFile"

# interfaces
.implements Lcloudsdk/ILoadResult;


# instance fields
.field private bBE:Lcloudsdk/IModule;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcloudsdk/IModule;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kingroot/kinguser/bmc;-><init>(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 21
    iput-object p4, p0, Lcom/kingroot/kinguser/bmh;->bBE:Lcloudsdk/IModule;

    .line 22
    return-void
.end method


# virtual methods
.method public final getModule()Lcloudsdk/IModule;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/bmh;->bBE:Lcloudsdk/IModule;

    return-object v0
.end method
