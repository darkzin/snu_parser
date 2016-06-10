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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -17(%ebp)   1  [ $v4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $v5       <bool> %ebp-18 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
l_f0_4_while_cond:
    jmp     l_f0_4_while_cond       #   3:     goto   4_while_cond
l_f0_7_while_cond:
    movl    $1, %eax                #   5:     if     1 # 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_8_while_body      
    jmp     l_f0_6                  #   6:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #   8:     goto   7_while_cond
l_f0_6:
    movl    $100, %eax              #  10:     assign v4 <- 100
    movb    %al, -17(%ebp)         
    jmp     l_f0_1_while_cond       #  11:     goto   1_while_cond
l_f0_0:
l_f0_12_while_cond:
    movl    $98, %eax               #  14:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
    movl    $1, %eax                #  16:     assign v5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_14                 #  17:     goto   14
l_f0_14:
    jmp     l_f0_12_while_cond      #  19:     goto   12_while_cond
    call    ReadInt                 #  20:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $77982, %eax            #   0:     div    t4 <- 77982, 74976
    movl    $74976, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     assign v2 <- t4
    movl    %eax, 12(%ebp)         
l_f1_2_while_cond:
    movl    $59709, %eax            #   3:     add    t5 <- 59709, 23186
    movl    $23186, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t6 <- t5, 73518
    movl    $73518, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     add    t7 <- t6, 71590
    movl    $71590, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     if     t7 < 9541 goto 3_while_body
    movl    $9541, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_3_while_body      
    jmp     l_f1_1                  #   7:     goto   1
l_f1_3_while_body:
    movl    $76405, %eax            #   9:     assign v1 <- 76405
    movl    %eax, 8(%ebp)          
    jmp     l_f1_2_while_cond       #  10:     goto   2_while_cond
l_f1_1:
    call    dummyINTfunc            #  12:     call   t8 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  13:     add    t9 <- t8, 53926
    movl    $53926, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  14:     sub    t10 <- t9, 57407
    movl    $57407, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     if     t10 >= 35821 goto 7
    movl    $35821, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_7                 
    jmp     l_f1_8                  #  16:     goto   8
l_f1_7:
    movl    $1, %eax                #  18:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_9                  #  19:     goto   9
l_f1_8:
    movl    $0, %eax                #  21:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f1_9:
    movzbl  -17(%ebp), %eax         #  23:     return t11
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t8       <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $t9       <bool> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 1 of <array 6 of <array 8 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $99278, %eax            #   1:     sub    t5 <- 99278, 25865
    movl    $25865, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t4 > t5 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f2_3:
    movzbl  -21(%ebp), %eax         #  10:     return t6
    jmp     l_f2_exit              
    movl    $2634, %eax             #  11:     if     2634 > 22795 goto 6_if_true
    movl    $22795, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  12:     goto   7_if_false
l_f2_6_if_true:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  15:     goto   9
    jmp     l_f2_10_while_cond      #  16:     goto   10_while_cond
l_f2_9:
    movl    $1, %eax                #  18:     return 1
    jmp     l_f2_exit              
    jmp     l_f2_15_if_false        #  19:     goto   15_if_false
    jmp     l_f2_13                 #  20:     goto   13
l_f2_15_if_false:
l_f2_13:
    call    dummyProcedure          #  23:     call   dummyProcedure
    call    dummyBOOLfunc           #  24:     call   t7 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    jmp     l_f2_5                  #  25:     goto   5
l_f2_7_if_false:
l_f2_5:
    call    dummyCHARfunc           #  28:     call   t8 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  29:     if     t8 <= 98 goto 19
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_19                
    jmp     l_f2_20                 #  30:     goto   20
l_f2_19:
    movl    $1, %eax                #  32:     assign t9 <- 1
    movb    %al, -24(%ebp)         
    jmp     l_f2_21                 #  33:     goto   21
l_f2_20:
    movl    $0, %eax                #  35:     assign t9 <- 0
    movb    %al, -24(%ebp)         
l_f2_21:
    movzbl  -24(%ebp), %eax         #  37:     return t9
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $2443, %eax             #   0:     div    t0 <- 2443, 59019
    movl    $59019, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $44147, %eax            #   1:     add    t1 <- 44147, t0
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, v0               
    jmp     l_test_exit            
l_test_3_while_cond:
    jmp     l_test_7                #   5:     goto   7
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_8                #   7:     goto   8
l_test_7:
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_8:
    movl    $0, %eax                #  11:     if     0 = t2 goto 4_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_4_while_body    
    jmp     l_test_2                #  12:     goto   2
l_test_4_while_body:
    jmp     l_test_exit            
    jmp     l_test_3_while_cond     #  15:     goto   3_while_cond
l_test_2:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  18:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  19:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #  20:     call   WriteChar
    addl    $4, %esp               

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
