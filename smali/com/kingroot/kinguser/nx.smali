.class public Lcom/kingroot/kinguser/nx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/nx$a;
    }
.end annotation


# instance fields
.field private final rP:Ljava/lang/String;

.field private final vp:Ljava/lang/String;

.field private final xA:Ljava/lang/String;

.field private final xB:Ljava/lang/String;

.field private final xC:Z

.field private final xD:I

.field private final xE:I

.field private final xF:Ljava/lang/String;

.field private final xG:Ljava/lang/String;

.field private final xH:Ljava/lang/String;

.field private final xu:Ljava/lang/String;

.field private final xv:Ljava/lang/String;

.field private final xw:Ljava/lang/String;

.field private final xx:Ljava/lang/String;

.field private final xy:Ljava/lang/String;

.field private final xz:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/nx$a;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "p1"

    iput-object v0, p0, Lcom/kingroot/kinguser/nx;->xu:Ljava/lang/String;

    .line 11
    const-string v0, "p2"

    iput-object v0, p0, Lcom/kingroot/kinguser/nx;->xv:Ljava/lang/String;

    .line 12
    const-string v0, "p3"

    iput-object v0, p0, Lcom/kingroot/kinguser/nx;->xw:Ljava/lang/String;

    .line 13
    const-string v0, "p4"

    iput-object v0, p0, Lcom/kingroot/kinguser/nx;->xx:Ljava/lang/String;

    .line 14
    const-string v0, "p5"

    iput-object v0, p0, Lcom/kingroot/kinguser/nx;->xy:Ljava/lang/String;

    .line 15
    const-string v0, "p6"

    iput-object v0, p0, Lcom/kingroot/kinguser/nx;->xz:Ljava/lang/String;

    .line 16
    const-string v0, "p7"

    iput-object v0, p0, Lcom/kingroot/kinguser/nx;->xA:Ljava/lang/String;

    .line 17
    const-string v0, "p8"

    iput-object v0, p0, Lcom/kingroot/kinguser/nx;->xB:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/kingroot/kinguser/nx$a;->a(Lcom/kingroot/kinguser/nx$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/nx;->xC:Z

    .line 62
    invoke-static {p1}, Lcom/kingroot/kinguser/nx$a;->b(Lcom/kingroot/kinguser/nx$a;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/nx;->xD:I

    .line 63
    invoke-static {p1}, Lcom/kingroot/kinguser/nx$a;->c(Lcom/kingroot/kinguser/nx$a;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/nx;->xE:I

    .line 64
    invoke-static {p1}, Lcom/kingroot/kinguser/nx$a;->d(Lcom/kingroot/kinguser/nx$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/nx;->xF:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/kingroot/kinguser/nx$a;->e(Lcom/kingroot/kinguser/nx$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/nx;->xG:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lcom/kingroot/kinguser/nx$a;->f(Lcom/kingroot/kinguser/nx$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/nx;->xH:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/kingroot/kinguser/nx$a;->g(Lcom/kingroot/kinguser/nx$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/nx;->rP:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Lcom/kingroot/kinguser/nx$a;->h(Lcom/kingroot/kinguser/nx$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/nx;->vp:Ljava/lang/String;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/nx$a;Lcom/kingroot/kinguser/ny;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/nx;-><init>(Lcom/kingroot/kinguser/nx$a;)V

    return-void
.end method

.method public static fp()Lcom/kingroot/kinguser/nx$a;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/kingroot/kinguser/nx$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/nx$a;-><init>(Lcom/kingroot/kinguser/ny;)V

    return-object v0
.end method


# virtual methods
.method public fo()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v1, "p1"

    iget-boolean v2, p0, Lcom/kingroot/kinguser/nx;->xC:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    const-string v1, "p2"

    iget v2, p0, Lcom/kingroot/kinguser/nx;->xD:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v1, "p3"

    iget v2, p0, Lcom/kingroot/kinguser/nx;->xE:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string v1, "p4"

    iget-object v2, p0, Lcom/kingroot/kinguser/nx;->xF:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "p5"

    iget-object v2, p0, Lcom/kingroot/kinguser/nx;->xG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "p6"

    iget-object v2, p0, Lcom/kingroot/kinguser/nx;->xH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "p7"

    iget-object v2, p0, Lcom/kingroot/kinguser/nx;->vp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "p8"

    iget-object v2, p0, Lcom/kingroot/kinguser/nx;->rP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v1, "env:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-boolean v1, p0, Lcom/kingroot/kinguser/nx;->xC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, " , mEPProductId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/kingroot/kinguser/nx;->xD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, " , mBuildNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p0, Lcom/kingroot/kinguser/nx;->xE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, " , mVersionName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lcom/kingroot/kinguser/nx;->xF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, " , mChannelNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Lcom/kingroot/kinguser/nx;->xG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, " , mLc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lcom/kingroot/kinguser/nx;->xH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, " , mWritableDir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Lcom/kingroot/kinguser/nx;->vp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, " , mImei:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lcom/kingroot/kinguser/nx;->rP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
