.class Lcom/tencent/open/TDialog$OnTimeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bwd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/TDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnTimeListener"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/kingroot/kinguser/bwd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/bwd;)V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->c:Ljava/lang/ref/WeakReference;

    .line 141
    iput-object p2, p0, Lcom/tencent/open/TDialog$OnTimeListener;->d:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/tencent/open/TDialog$OnTimeListener;->a:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/tencent/open/TDialog$OnTimeListener;->b:Ljava/lang/String;

    .line 144
    iput-object p5, p0, Lcom/tencent/open/TDialog$OnTimeListener;->e:Lcom/kingroot/kinguser/bwd;

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/tencent/open/TDialog$OnTimeListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/tencent/open/TDialog$OnTimeListener;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 149
    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/bqt;->mU(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v0}, Lcom/tencent/open/TDialog$OnTimeListener;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 153
    new-instance v0, Lcom/kingroot/kinguser/bwf;

    const/4 v1, -0x4

    const-string v2, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v0, v1, v2, p1}, Lcom/kingroot/kinguser/bwf;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/open/TDialog$OnTimeListener;->onError(Lcom/kingroot/kinguser/bwf;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->e:Lcom/kingroot/kinguser/bwd;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->e:Lcom/kingroot/kinguser/bwd;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bwd;->onCancel()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->e:Lcom/kingroot/kinguser/bwd;

    .line 185
    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 159
    check-cast p1, Lorg/json/JSONObject;

    .line 160
    invoke-static {}, Lcom/kingroot/kinguser/bqj;->ahn()Lcom/kingroot/kinguser/bqj;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/open/TDialog$OnTimeListener;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_H5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v6, "ret"

    const/4 v7, -0x6

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v9, p0, Lcom/tencent/open/TDialog$OnTimeListener;->a:Ljava/lang/String;

    const/4 v10, 0x0

    move-wide v6, v4

    invoke-virtual/range {v0 .. v10}, Lcom/kingroot/kinguser/bqj;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V

    .line 162
    iget-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->e:Lcom/kingroot/kinguser/bwd;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->e:Lcom/kingroot/kinguser/bwd;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/bwd;->onComplete(Ljava/lang/Object;)V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->e:Lcom/kingroot/kinguser/bwd;

    .line 166
    :cond_0
    return-void
.end method

.method public onError(Lcom/kingroot/kinguser/bwf;)V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 170
    iget-object v0, p1, Lcom/kingroot/kinguser/bwf;->bQW:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/kingroot/kinguser/bwf;->bQW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/TDialog$OnTimeListener;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 171
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/bqj;->ahn()Lcom/kingroot/kinguser/bqj;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/open/TDialog$OnTimeListener;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_H5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v8, p1, Lcom/kingroot/kinguser/bwf;->errorCode:I

    const/4 v10, 0x0

    move-wide v6, v4

    invoke-virtual/range {v0 .. v10}, Lcom/kingroot/kinguser/bqj;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V

    .line 173
    iget-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->e:Lcom/kingroot/kinguser/bwd;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->e:Lcom/kingroot/kinguser/bwd;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/bwd;->onError(Lcom/kingroot/kinguser/bwf;)V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/TDialog$OnTimeListener;->e:Lcom/kingroot/kinguser/bwd;

    .line 177
    :cond_0
    return-void

    .line 170
    :cond_1
    iget-object v9, p0, Lcom/tencent/open/TDialog$OnTimeListener;->a:Ljava/lang/String;

    goto :goto_0
.end method
