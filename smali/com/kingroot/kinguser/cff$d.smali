.class public Lcom/kingroot/kinguser/cff$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public caE:I

.field public caF:Z

.field public caG:Z

.field public caH:Z

.field public caI:Z

.field public caJ:Z

.field public caK:Z

.field public caL:Z

.field public caM:Z

.field public caN:I

.field public caO:Lcom/kingroot/kinguser/cez$b;

.field public caP:J

.field public caQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/az;",
            ">;"
        }
    .end annotation
.end field

.field public caR:Lcom/kingroot/kinguser/cff$a;

.field public caS:J

.field public caT:Z

.field public caU:B

.field public caV:J


# direct methods
.method public constructor <init>(IZZZJLjava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/az;",
            ">;",
            "Lcom/kingroot/kinguser/cff$a;",
            "J)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iput v2, p0, Lcom/kingroot/kinguser/cff$d;->caE:I

    .line 765
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cff$d;->caF:Z

    .line 766
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cff$d;->caG:Z

    .line 767
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cff$d;->caH:Z

    .line 768
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cff$d;->caI:Z

    .line 769
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cff$d;->caJ:Z

    .line 770
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cff$d;->caK:Z

    .line 771
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cff$d;->caL:Z

    .line 773
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cff$d;->caM:Z

    .line 779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cff$d;->caS:J

    .line 780
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cff$d;->caT:Z

    .line 781
    iput-byte v2, p0, Lcom/kingroot/kinguser/cff$d;->caU:B

    .line 782
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/cff$d;->caV:J

    .line 785
    iput p1, p0, Lcom/kingroot/kinguser/cff$d;->caE:I

    .line 786
    iput-boolean p2, p0, Lcom/kingroot/kinguser/cff$d;->caF:Z

    .line 787
    iput-boolean p3, p0, Lcom/kingroot/kinguser/cff$d;->caI:Z

    .line 788
    iput-boolean p4, p0, Lcom/kingroot/kinguser/cff$d;->caJ:Z

    .line 789
    iput-wide p5, p0, Lcom/kingroot/kinguser/cff$d;->caP:J

    .line 790
    iput-object p7, p0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    .line 791
    iput-object p8, p0, Lcom/kingroot/kinguser/cff$d;->caR:Lcom/kingroot/kinguser/cff$a;

    .line 792
    invoke-static {}, Lcom/kingroot/kinguser/cfb;->alz()Lcom/kingroot/kinguser/cet;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/cet;->alo()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cff$d;->caN:I

    .line 793
    iput-wide p9, p0, Lcom/kingroot/kinguser/cff$d;->caV:J

    .line 794
    return-void
.end method


# virtual methods
.method public alO()Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 797
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingroot/kinguser/cff$d;->caS:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 798
    const-wide/32 v2, 0x2bf20

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    move v2, v1

    .line 799
    :goto_0
    if-eqz v2, :cond_2

    .line 800
    const-string v1, "ocean"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "[ocean][time_out]SharkNetwork.SharkSend.isTimeOut(), SharkSend.seqNoTag: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/kingroot/kinguser/cff$d;->caN:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " time(s): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v8, v8}, Lcom/kingroot/kinguser/cfe;->c(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/az;Lcom/kingroot/kinguser/bg;)V

    .line 802
    iget-object v1, p0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 803
    iget-object v1, p0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    .line 804
    :goto_1
    if-ge v1, v3, :cond_2

    .line 805
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/az;

    .line 806
    if-nez v0, :cond_1

    .line 804
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    move v2, v0

    .line 798
    goto :goto_0

    .line 810
    :cond_1
    const-string v4, "ocean"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[ocean][time_out]SharkNetwork.SharkSend.isTimeOut(), cmdId|"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/kingroot/kinguser/az;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|seqNo|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, v0, Lcom/kingroot/kinguser/az;->seqNo:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v8, v8}, Lcom/kingroot/kinguser/cfe;->c(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/az;Lcom/kingroot/kinguser/bg;)V

    goto :goto_2

    .line 814
    :cond_2
    return v2
.end method

.method public alP()Z
    .locals 1

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cff$d;->caI:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/cff$d;->caJ:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public alQ()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cff$d;->caF:Z

    return v0
.end method
