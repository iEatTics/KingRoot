.class public final Lcom/kingroot/kinguser/cgp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cet:Z

.field private static ceu:Lcom/kingroot/kinguser/cgm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/cgp;->cet:Z

    .line 33
    new-instance v0, Lcom/kingroot/kinguser/cgs;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cgs;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cgp;->ceu:Lcom/kingroot/kinguser/cgm;

    return-void
.end method

.method private static A(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 122
    const/4 p0, 0x0

    .line 128
    :goto_0
    return-object p0

    .line 123
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 124
    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_1
    instance-of v0, p0, Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 126
    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lcom/kingroot/kinguser/cgp;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    const-string v0, "(Null stack trace)"

    .line 144
    :goto_0
    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 137
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 138
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 139
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 140
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/kingroot/kinguser/cgp;->ceu:Lcom/kingroot/kinguser/cgm;

    invoke-static {p1}, Lcom/kingroot/kinguser/cgp;->A(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/kingroot/kinguser/cgm;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static isEnable()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/kingroot/kinguser/cgp;->cet:Z

    return v0
.end method

.method public static setLogEnable(Z)V
    .locals 1

    .prologue
    .line 47
    .line 48
    sput-boolean p0, Lcom/kingroot/kinguser/cgp;->cet:Z

    if-eqz p0, :cond_0

    .line 49
    new-instance v0, Lcom/kingroot/kinguser/cgq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cgq;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cgp;->ceu:Lcom/kingroot/kinguser/cgm;

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/cgs;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cgs;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cgp;->ceu:Lcom/kingroot/kinguser/cgm;

    goto :goto_0
.end method
