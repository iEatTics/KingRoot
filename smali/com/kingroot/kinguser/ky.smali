.class public Lcom/kingroot/kinguser/ky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/nt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ky$a;
    }
.end annotation


# instance fields
.field private uA:Ljava/lang/String;

.field private uw:Ljava/lang/String;

.field private ux:Ljava/lang/String;

.field private uy:Ljava/lang/String;

.field private uz:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/ky$a;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/kingroot/kinguser/ky$a;->a(Lcom/kingroot/kinguser/ky$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ky;->uw:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/kingroot/kinguser/ky$a;->b(Lcom/kingroot/kinguser/ky$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ky;->ux:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/kingroot/kinguser/ky$a;->c(Lcom/kingroot/kinguser/ky$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ky;->uy:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/kingroot/kinguser/ky$a;->d(Lcom/kingroot/kinguser/ky$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ky;->uz:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/kingroot/kinguser/ky$a;->e(Lcom/kingroot/kinguser/ky$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ky;->uA:Ljava/lang/String;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ky$a;Lcom/kingroot/kinguser/kz;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ky;-><init>(Lcom/kingroot/kinguser/ky$a;)V

    return-void
.end method


# virtual methods
.method public bI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/ky;->uy:Ljava/lang/String;

    return-object v0
.end method

.method public bJ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/ky;->uz:Ljava/lang/String;

    return-object v0
.end method

.method public dk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/ky;->uw:Ljava/lang/String;

    return-object v0
.end method

.method public dl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/ky;->ux:Ljava/lang/String;

    return-object v0
.end method

.method public dm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/ky;->uA:Ljava/lang/String;

    return-object v0
.end method

.method public dn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "Prometheus"

    return-object v0
.end method
