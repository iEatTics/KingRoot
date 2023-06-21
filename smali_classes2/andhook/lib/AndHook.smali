.class public final Landhook/lib/AndHook;
.super Ljava/lang/Object;
.source "AndHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landhook/lib/AndHook$Dalvik;
    }
.end annotation


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "AK"

.field public static final LOG_TAG:Ljava/lang/String; = "AndHook"

.field public static final VERSION:Ljava/lang/String; = "3.6.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native backup(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation
.end method

.method public static native backup(Ljava/lang/reflect/Member;)I
.end method

.method public static native deoptimizeMethod(Ljava/lang/reflect/Member;)V
.end method

.method public static native disableLogging(Z)V
.end method

.method public static dumpClassMethods(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 171
    invoke-static {p0, v0}, Landhook/lib/AndHook;->dumpClassMethods(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private static native dumpClassMethods(Ljava/lang/Class;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public static dumpClassMethods(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-static {v0, p0}, Landhook/lib/AndHook;->dumpClassMethods(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static native enableFastDexLoad(Z)V
.end method

.method public static ensureClassInitialized(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {p0}, Landhook/lib/AndHook;->initializeClass(Ljava/lang/Class;)Z

    move-result p0

    return p0

    .line 152
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interface or abstract class `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "` cannot be initialized!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AndHook"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static ensureNativeLibraryLoaded(Ljava/io/File;)V
    .locals 12

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_5

    .line 27
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "ensureNativeLibraryLoaded; Android 10 not supported"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    const-string p0, "android.app.ActivityThread"

    .line 31
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const-string v0, "currentApplication"

    new-array v1, v3, [Ljava/lang/Class;

    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    .line 34
    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/app/Application;

    goto :goto_2

    .line 37
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, v0, v4

    const-string v6, "currentActivityThread"

    .line 38
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-array v6, v3, [Ljava/lang/Object;

    .line 39
    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    const-string v10, "getApplication"

    .line 41
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-array p0, v3, [Ljava/lang/Object;

    .line 42
    invoke-virtual {v9, v5, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/app/Application;

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    const-string p0, "One or more enabled modding options are no longer supported on Android 10."

    const/4 v0, 0x1

    .line 50
    invoke-static {v2, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-void

    .line 59
    :cond_5
    :try_start_1
    invoke-static {}, Landhook/lib/AndHook;->getVersionInfo()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 65
    :catch_0
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    const-string v2, "/data/local/tmp/"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v1

    if-nez v1, :cond_7

    .line 68
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing cache directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndHook"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-nez p0, :cond_8

    :try_start_2
    const-string v0, "AK"

    .line 72
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_3

    .line 74
    :cond_8
    new-instance v0, Ljava/io/File;

    const-string v1, "libAK.so"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    if-nez p0, :cond_9

    :try_start_3
    const-string p0, "AKCompat"

    .line 81
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_3

    .line 83
    :cond_9
    new-instance v1, Ljava/io/File;

    const-string v2, "libAKCompat.so"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    return-void

    .line 87
    :catch_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible platform "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static native getVersionInfo()Ljava/lang/String;
.end method

.method public static hook(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->backup(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 120
    invoke-static {p0, p1, p2, p3, v0}, Landhook/lib/AndHook;->hook(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public static hook(Ljava/lang/reflect/Member;Ljava/lang/Object;)I
    .locals 2

    .line 108
    invoke-static {p0}, Landhook/lib/AndHook;->backup(Ljava/lang/reflect/Member;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 110
    invoke-static {p0, p1, v0}, Landhook/lib/AndHook;->hook(Ljava/lang/reflect/Member;Ljava/lang/Object;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public static native hook(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "I)Z"
        }
    .end annotation
.end method

.method public static native hook(Ljava/lang/reflect/Member;Ljava/lang/Object;I)Z
.end method

.method public static hookNoBackup(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 132
    invoke-static {p0, p1, p2, p3, v0}, Landhook/lib/AndHook;->hook(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z

    return-void
.end method

.method public static hookNoBackup(Ljava/lang/reflect/Member;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    .line 127
    invoke-static {p0, p1, v0}, Landhook/lib/AndHook;->hook(Ljava/lang/reflect/Member;Ljava/lang/Object;I)Z

    return-void
.end method

.method private static native initializeClass(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public static varargs native invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static varargs invokeBooleanMethod(ILjava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 193
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeBooleanMethod(ILjava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 195
    :cond_0
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static varargs invokeByteMethod(ILjava/lang/Object;[Ljava/lang/Object;)B
    .locals 2

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 202
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeByteMethod(ILjava/lang/Object;[Ljava/lang/Object;)B

    move-result p0

    return p0

    .line 204
    :cond_0
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public static varargs invokeCharMethod(ILjava/lang/Object;[Ljava/lang/Object;)C
    .locals 2

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 220
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeCharMethod(ILjava/lang/Object;[Ljava/lang/Object;)C

    move-result p0

    return p0

    .line 222
    :cond_0
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0
.end method

.method public static varargs invokeDoubleMethod(ILjava/lang/Object;[Ljava/lang/Object;)D
    .locals 2

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 256
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeDoubleMethod(ILjava/lang/Object;[Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0

    .line 258
    :cond_0
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs invokeFloatMethod(ILjava/lang/Object;[Ljava/lang/Object;)F
    .locals 2

    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 247
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeFloatMethod(ILjava/lang/Object;[Ljava/lang/Object;)F

    move-result p0

    return p0

    .line 249
    :cond_0
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static varargs invokeIntMethod(ILjava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 229
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeIntMethod(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 231
    :cond_0
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static varargs invokeLongMethod(ILjava/lang/Object;[Ljava/lang/Object;)J
    .locals 2

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 238
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeLongMethod(ILjava/lang/Object;[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0

    .line 240
    :cond_0
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs invokeMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 288
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs invokeObjectMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 266
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeObjectMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 268
    :cond_0
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs invokeShortMethod(ILjava/lang/Object;[Ljava/lang/Object;)S
    .locals 2

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 211
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeShortMethod(ILjava/lang/Object;[Ljava/lang/Object;)S

    move-result p0

    return p0

    .line 213
    :cond_0
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method

.method public static varargs invokeVoidMethod(ILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 184
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeVoidMethod(ILjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static native jitCompile(Ljava/lang/reflect/Member;)V
.end method

.method public static native optimizeMethod(Ljava/lang/reflect/Member;)V
.end method

.method public static native restore(ILjava/lang/reflect/Member;)Z
.end method

.method public static native resumeAll()V
.end method

.method public static native startDaemons()V
.end method

.method public static native stopDaemons()V
.end method

.method public static native suspendAll()Z
.end method
