.class public Lcom/kingroot/kinguser/bed;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bed$a;
    }
.end annotation


# instance fields
.field private bkA:Lcom/kingroot/kinguser/beb;

.field private bkB:Ljava/lang/Throwable;

.field bkC:Lcom/kingroot/kinguser/bed$a;

.field bkD:Z

.field final bkE:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final bku:Lcom/kingroot/kinguser/bed$a;

.field bkv:Lcom/kingroot/kinguser/bed;

.field private bkw:Lcom/kingroot/kinguser/bem;

.field private bkx:Lcom/kingroot/kinguser/bec;

.field private bky:Z

.field private bkz:Lcom/kingroot/kinguser/bek;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bek;)V
    .locals 3

    .prologue
    .line 62
    sget-object v0, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v1, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/kingroot/kinguser/bed$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bed$1;-><init>(Lcom/kingroot/kinguser/bed;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bed;->bku:Lcom/kingroot/kinguser/bed$a;

    .line 33
    sget-object v0, Lcom/kingroot/kinguser/beb;->bkl:Lcom/kingroot/kinguser/beb;

    iput-object v0, p0, Lcom/kingroot/kinguser/bed;->bkA:Lcom/kingroot/kinguser/beb;

    .line 38
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bed;->bkD:Z

    .line 50
    iput-object p1, p0, Lcom/kingroot/kinguser/bed;->bkw:Lcom/kingroot/kinguser/bem;

    .line 51
    iput-object p2, p0, Lcom/kingroot/kinguser/bed;->bkx:Lcom/kingroot/kinguser/bec;

    .line 52
    iput-boolean p3, p0, Lcom/kingroot/kinguser/bed;->bky:Z

    .line 53
    iput-object p4, p0, Lcom/kingroot/kinguser/bed;->bkz:Lcom/kingroot/kinguser/bek;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bed;->bkE:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    return-void
.end method


# virtual methods
.method public Zb()Lcom/kingroot/kinguser/bem;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/bed;->bkw:Lcom/kingroot/kinguser/bem;

    return-object v0
.end method

.method Zc()Lcom/kingroot/kinguser/bek;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/bed;->bkz:Lcom/kingroot/kinguser/bek;

    return-object v0
.end method

.method public Zd()Lcom/kingroot/kinguser/bec;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/bed;->bkx:Lcom/kingroot/kinguser/bec;

    return-object v0
.end method

.method public Ze()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bed;->bky:Z

    return v0
.end method

.method public Zf()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method a(Lcom/kingroot/kinguser/beb;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/kingroot/kinguser/bed;->bkA:Lcom/kingroot/kinguser/beb;

    .line 148
    return-void
.end method

.method a(Lcom/kingroot/kinguser/bek;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kingroot/kinguser/bed;->bkz:Lcom/kingroot/kinguser/bek;

    .line 86
    return-void
.end method

.method public g(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/bed;->bkE:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 176
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/bed;->bkE:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onRunning()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/bed;->bkE:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 160
    return-void
.end method

.method final recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iput-object v1, p0, Lcom/kingroot/kinguser/bed;->bkv:Lcom/kingroot/kinguser/bed;

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bed;->bky:Z

    .line 189
    sget-object v0, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    iput-object v0, p0, Lcom/kingroot/kinguser/bed;->bkx:Lcom/kingroot/kinguser/bec;

    .line 191
    sget-object v0, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    iput-object v0, p0, Lcom/kingroot/kinguser/bed;->bkw:Lcom/kingroot/kinguser/bem;

    .line 192
    sget-object v0, Lcom/kingroot/kinguser/beb;->bkl:Lcom/kingroot/kinguser/beb;

    iput-object v0, p0, Lcom/kingroot/kinguser/bed;->bkA:Lcom/kingroot/kinguser/beb;

    .line 193
    iput-object v1, p0, Lcom/kingroot/kinguser/bed;->bkB:Ljava/lang/Throwable;

    .line 194
    return-void
.end method

.method protected final run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/bed;->bkz:Lcom/kingroot/kinguser/bek;

    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/kingroot/kinguser/bed;->bkz:Lcom/kingroot/kinguser/bek;

    iget-object v0, p0, Lcom/kingroot/kinguser/bed;->bkC:Lcom/kingroot/kinguser/bed$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bed;->bkC:Lcom/kingroot/kinguser/bed$a;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 78
    :cond_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bed;->bku:Lcom/kingroot/kinguser/bed$a;

    goto :goto_0
.end method

.method setException(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/kingroot/kinguser/bed;->bkB:Ljava/lang/Throwable;

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KJob{Priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bed;->bkw:Lcom/kingroot/kinguser/bem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", JobType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bed;->bkx:Lcom/kingroot/kinguser/bec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSingle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/bed;->bky:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", JobStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bed;->bkA:Lcom/kingroot/kinguser/beb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/kingroot/kinguser/bed;->bkB:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bed;->bkB:Ljava/lang/Throwable;

    .line 203
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    return-object v0

    .line 203
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public xr()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/bed;->bkE:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 168
    return-void
.end method
