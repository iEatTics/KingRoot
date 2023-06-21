.class Lcom/kingroot/kinguser/bin$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private aiS:Lcom/kingroot/kinguser/we$a;

.field final synthetic btK:Lcom/kingroot/kinguser/bin;

.field private btL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private btM:Z


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/bin;)V
    .locals 1

    .prologue
    .line 499
    iput-object p1, p0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    new-instance v0, Lcom/kingroot/kinguser/bin$a$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bin$a$1;-><init>(Lcom/kingroot/kinguser/bin$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bin$a;->aiS:Lcom/kingroot/kinguser/we$a;

    .line 675
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bin$a;->btL:Ljava/util/Map;

    .line 676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bin$a;->btM:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bin;Lcom/kingroot/kinguser/bin$1;)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bin$a;-><init>(Lcom/kingroot/kinguser/bin;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/bin$a;->a(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/bin$a;->g(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bin$a;->g(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kingroot/kinguser/bin$a;->a(Ljava/lang/String;ILjava/lang/Object;Lcom/kingroot/kinguser/bin$b;)V

    .line 939
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/Object;Lcom/kingroot/kinguser/bin$b;)V
    .locals 6

    .prologue
    .line 943
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->b(Lcom/kingroot/kinguser/bin;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 944
    new-instance v0, Lcom/kingroot/kinguser/bin$a$10;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bin$a$10;-><init>(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;ILjava/lang/Object;Lcom/kingroot/kinguser/bin$b;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    if-eqz p4, :cond_0

    .line 969
    const/4 v0, -0x1

    invoke-interface {p4, v0}, Lcom/kingroot/kinguser/bin$b;->onCallback(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bin$a;)Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bin$a;->btM:Z

    return v0
.end method

.method private acZ()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 686
    const-string v1, "isTcsWebview"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string v1, "getQQSecureVersionCode"

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string v1, "getQQSecureVersionName"

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string v1, "getQQSecureBuildNo"

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string v1, "getQQLoginState"

    const/16 v2, 0x2bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string v1, "getQQLoginKey"

    const/16 v2, 0x2bd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-string v1, "loginQQ"

    const/16 v2, 0x2be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string v1, "logoutQQ"

    const/16 v2, 0x2bf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string v1, "loginWX"

    const/16 v2, 0x2c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string v1, "getWXLoginState"

    const/16 v2, 0x2c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string v1, "getInfo"

    const/16 v2, 0x4b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bin$a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a;->btL:Ljava/util/Map;

    return-object v0
.end method

.method private e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bin$a;->g(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method private f(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bin$a;->g(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method private g(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->b(Lcom/kingroot/kinguser/bin;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1012
    new-instance v0, Lcom/kingroot/kinguser/bin$a$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingroot/kinguser/bin$a$2;-><init>(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1032
    :cond_0
    return-void
.end method

.method private g(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->i(Lcom/kingroot/kinguser/bin;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bin$a$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/bin$a$6;-><init>(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 761
    return-void
.end method

.method private h(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bin$a;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method private i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 776
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bin$a;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 777
    return-void
.end method

.method private j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->i(Lcom/kingroot/kinguser/bin;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bin$a$7;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/kingroot/kinguser/bin$a$7;-><init>(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 798
    return-void
.end method

.method private k(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 805
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->i(Lcom/kingroot/kinguser/bin;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/kingroot/kinguser/bin$a$8;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bin$a$8;-><init>(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 899
    return-void
.end method


# virtual methods
.method public aM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 662
    if-nez p2, :cond_0

    .line 670
    :goto_0
    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a;->btL:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 667
    invoke-direct {p0}, Lcom/kingroot/kinguser/bin$a;->acZ()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bin$a;->btL:Ljava/util/Map;

    .line 669
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bin$a;->btM:Z

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->b(Lcom/kingroot/kinguser/bin;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 918
    new-instance v0, Lcom/kingroot/kinguser/bin$a$9;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/bin$a$9;-><init>(Lcom/kingroot/kinguser/bin$a;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 928
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 609
    if-nez p3, :cond_1

    .line 610
    const-string v0, "check_arg:funcName is null"

    invoke-direct {p0, p1, p2, v0}, Lcom/kingroot/kinguser/bin$a;->g(Ljava/lang/String;ILjava/lang/String;)V

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    const-string v0, "isTcsWebview"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingroot/kinguser/bin$a;->a(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 619
    :cond_2
    const-string v0, "checkPermission"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 620
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingroot/kinguser/bin$a;->a(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 624
    :cond_3
    const-string v0, "getQQSecureVersionCode"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 625
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->i(Lcom/kingroot/kinguser/bin;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bin$a$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/bin$a$3;-><init>(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 631
    :cond_4
    const-string v0, "getQQSecureVersionName"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 632
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->i(Lcom/kingroot/kinguser/bin;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bin$a$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/bin$a$4;-><init>(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 639
    :cond_5
    const-string v0, "getQQSecureBuildNo"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 640
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->i(Lcom/kingroot/kinguser/bin;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bin$a$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/bin$a$5;-><init>(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 647
    :cond_6
    const-string v0, "getQQLoginState"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 648
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bin$a;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :cond_7
    const-string v0, "getWXLoginState"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 650
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bin$a;->f(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 651
    :cond_8
    const-string v0, "getInfo"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 652
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bin$a;->k(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 653
    :cond_9
    const-string v0, "loginQQ"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 654
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bin$a;->h(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 655
    :cond_a
    const-string v0, "loginWX"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bin$a;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a;->aiS:Lcom/kingroot/kinguser/we$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/we;->b(Lcom/kingroot/kinguser/we$a;)V

    .line 590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bin$a;->btM:Z

    .line 591
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a;->aiS:Lcom/kingroot/kinguser/we$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/we;->a(Lcom/kingroot/kinguser/we$a;)V

    .line 579
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a;->btL:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/kingroot/kinguser/bin$a;->acZ()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bin$a;->btL:Ljava/util/Map;

    .line 582
    :cond_0
    return-void
.end method
