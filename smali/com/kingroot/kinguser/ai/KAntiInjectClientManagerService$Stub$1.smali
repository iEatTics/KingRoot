.class Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bhn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$1;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    iget v1, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->failCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget v1, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->failPeekCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget v1, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->successCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget v1, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootCount:I

    iget v2, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootCount:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget v1, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget v1, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget v1, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget v1, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    invoke-virtual {p1, v1}, Lcom/kingroot/kinguser/util/protect/RebootStat;->iO(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-static {p2, v0}, Lcom/kingroot/kinguser/ahk;->h(ILjava/util/List;)V

    .line 193
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x4

    .line 137
    if-ne p2, v2, :cond_1

    .line 138
    iget v0, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    if-ne v0, v1, :cond_0

    .line 139
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$1;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V

    .line 150
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$1;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V

    goto :goto_0

    .line 144
    :cond_1
    iget v0, p1, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    if-ne v0, v1, :cond_2

    .line 145
    invoke-direct {p0, p1, v1}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$1;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V

    goto :goto_0

    .line 147
    :cond_2
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$1;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V

    goto :goto_0
.end method

.method public b(Lcom/kingroot/kinguser/util/protect/RebootStat;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$1;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$000(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/kingroot/kinguser/ahi;->xc()Lcom/kingroot/kinguser/ahi;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahi;->wc()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 159
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ahi;->aI(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$1;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V

    .line 165
    :cond_0
    return-void
.end method

.method public c(Lcom/kingroot/kinguser/util/protect/RebootStat;)V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$1;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V

    .line 170
    return-void
.end method

.method public d(Lcom/kingroot/kinguser/util/protect/RebootStat;)V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$1;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V

    .line 175
    return-void
.end method
