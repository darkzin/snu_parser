##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t20      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t21      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t22      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t23      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 19 of <array 70 of <array 9 of <array 60 of <array 67 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 64 of <array 76 of <array 10 of <array 2 of <array 86 of <int>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $68, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $99, %eax               #   1:     if     99 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $98, %eax               #   4:     assign v2 <- 98
    movb    %al, 12(%ebp)          
    call    dummyBOOLfunc           #   5:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   6:     if     97 = 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   7:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   9:     goto   6
l_f0_8_if_false:
l_f0_6:
    call    WriteLn                 #  12:     call   WriteLn
    jmp     l_f0_1_while_cond       #  13:     goto   1_while_cond
l_f0_0:
    movl    $97, %eax               #  15:     if     97 = 100 goto 12_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  16:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_17_if_false        #  18:     goto   17_if_false
    jmp     l_f0_15                 #  19:     goto   15
l_f0_17_if_false:
l_f0_15:
    call    dummyCHARfunc           #  22:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $90307, %eax            #  26:     mul    t13 <- 90307, t12
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     add    t14 <- t13, 42118
    movl    $42118, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  28:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  31:     mul    t16 <- t14, t15
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  32:     add    t17 <- t16, 72240
    movl    $72240, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  33:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  35:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  36:     mul    t19 <- t17, t18
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  37:     add    t20 <- t19, 58016
    movl    $58016, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  38:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  39:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  40:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  41:     mul    t22 <- t20, t21
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  42:     add    t23 <- t22, 30828
    movl    $30828, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  43:     mul    t24 <- t23, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  44:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  45:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  46:     add    t26 <- t24, t25
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  47:     add    t27 <- v1, t26
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -14(%ebp), %eax         #  48:     assign @t27 <- t11
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_11                 #  49:     goto   11
l_f0_13_if_false:
l_f0_11:
    movl    $99, %eax               #  52:     assign v2 <- 99
    movb    %al, 12(%ebp)          

l_f0_exit:
    # epilogue
    addl    $68, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 1 of <array 42 of <array 100 of <array 94 of <int>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t10
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t11
    jmp     l_f1_exit              
    jmp     l_f1_3_if_true          #   4:     goto   3_if_true
    jmp     l_f1_4_if_false         #   5:     goto   4_if_false
l_f1_3_if_true:
l_f1_7_while_cond:
    movl    $99, %eax               #   8:     if     99 < 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_8_while_body      
    jmp     l_f1_6                  #   9:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  11:     goto   7_while_cond
l_f1_6:
    call    dummyCHARfunc           #  13:     call   t12 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_2                  #  14:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f2_exit              
    movl    $1, %eax                #   1:     if     1 # 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    movl    $99, %eax               #   4:     if     99 >= 98 goto 6
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_6                 
    jmp     l_f2_7                  #   5:     goto   7
l_f2_6:
    movl    $1, %eax                #   7:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_8                  #   8:     goto   8
l_f2_7:
    movl    $0, %eax                #  10:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_8:
    movzbl  -13(%ebp), %eax         #  12:     assign v1 <- t10
    movb    %al, -14(%ebp)         
l_f2_11_while_cond:
    jmp     l_f2_11_while_cond      #  14:     goto   11_while_cond
    jmp     l_f2_1                  #  15:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <char> %ebp-45 ]
    #    -46(%ebp)   1  [ $t9       <bool> %ebp-46 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $12878, %eax            #   1:     add    t1 <- 12878, 46413
    movl    $46413, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 14051
    movl    $14051, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t3 <- t2, 33079
    movl    $33079, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     sub    t4 <- t3, 64287
    movl    $64287, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     add    t5 <- t4, 3684
    movl    $3684, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     add    t6 <- t5, 3906
    movl    $3906, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     add    t7 <- t6, 50097
    movl    $50097, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     assign v0 <- t7
    movl    %eax, v0               
l_test_3_while_cond:
    call    dummyCHARfunc           #  10:     call   t8 <- dummyCHARfunc
    movb    %al, -45(%ebp)         
    movl    $100, %eax              #  11:     if     100 = t8 goto 4_while_body
    movzbl  -45(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_4_while_body    
    jmp     l_test_2                #  12:     goto   2
l_test_4_while_body:
    jmp     l_test_3_while_cond     #  14:     goto   3_while_cond
l_test_2:
    call    dummyBOOLfunc           #  16:     call   t9 <- dummyBOOLfunc
    movb    %al, -46(%ebp)         
l_test_8_while_cond:
    movl    $100, %eax              #  18:     if     100 # 98 goto 13
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_13              
    jmp     l_test_7                #  19:     goto   7
l_test_13:
    jmp     l_test_7                #  21:     goto   7
    jmp     l_test_7                #  22:     goto   7
    jmp     l_test_8_while_cond     #  23:     goto   8_while_cond
l_test_7:

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
