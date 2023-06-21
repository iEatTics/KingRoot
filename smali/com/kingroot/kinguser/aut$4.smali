.class final Lcom/kingroot/kinguser/aut$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aut;->b(Lcom/kingroot/kinguser/bcy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aSS:Lcom/kingroot/kinguser/bcy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bcy;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/kingroot/kinguser/aut$4;->aSS:Lcom/kingroot/kinguser/bcy;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 314
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 315
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$4;->aSS:Lcom/kingroot/kinguser/bcy;

    instance-of v0, v0, Lcom/kingroot/kinguser/bdg;

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$4;->aSS:Lcom/kingroot/kinguser/bcy;

    check-cast v0, Lcom/kingroot/kinguser/bdg;

    .line 317
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdg;->YB()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    invoke-static {}, Lcom/kingroot/kinguser/security/ProtectRecorder;->XX()Lcom/kingroot/kinguser/security/ProtectRecorder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdg;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/security/ProtectRecorder;->P(Ljava/lang/String;I)V

    .line 319
    invoke-static {}, Lcom/kingroot/kinguser/bcs;->Yc()Lcom/kingroot/kinguser/bcs;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdg;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bcs;->kE(Ljava/lang/String;)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/security/ProtectRecorder;->XX()Lcom/kingroot/kinguser/security/ProtectRecorder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdg;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/security/ProtectRecorder;->P(Ljava/lang/String;I)V

    .line 322
    invoke-static {}, Lcom/kingroot/kinguser/bcr;->XT()Lcom/kingroot/kinguser/bcr;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdg;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bcr;->kE(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$4;->aSS:Lcom/kingroot/kinguser/bcy;

    instance-of v0, v0, Lcom/kingroot/kinguser/bda;

    if-eqz v0, :cond_0

    .line 326
    invoke-static {}, Lcom/kingroot/kinguser/security/ProtectRecorder;->XX()Lcom/kingroot/kinguser/security/ProtectRecorder;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704b8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/security/ProtectRecorder;->P(Ljava/lang/String;I)V

    .line 328
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aks;->cp(Z)V

    goto :goto_0
.end method
