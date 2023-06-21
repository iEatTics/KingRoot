.class public Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/utils/system/ProcessUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessInfo"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public pid:I

.field public pkg:Ljava/lang/String;

.field public ppid:I

.field public uid:I

.field public user:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 1

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->user:Ljava/lang/String;

    .line 609
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    .line 623
    iput p1, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    .line 624
    iput p2, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->ppid:I

    .line 625
    iput-object p3, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    .line 626
    iput p4, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    .line 627
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->user:Ljava/lang/String;

    .line 609
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    .line 630
    iput p1, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    .line 631
    iput p2, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    .line 632
    iput-object p3, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pkg:Ljava/lang/String;

    .line 633
    iput-object p4, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    .line 634
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->user:Ljava/lang/String;

    .line 609
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    .line 616
    iput-object p1, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->user:Ljava/lang/String;

    .line 617
    iput p2, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    .line 618
    iput p3, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->ppid:I

    .line 619
    iput-object p4, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    .line 620
    return-void
.end method

.method static synthetic access$200(Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;)V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->loadUid()V

    return-void
.end method

.method private loadUid()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->user:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    .line 638
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USER="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PPID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->ppid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NAME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
