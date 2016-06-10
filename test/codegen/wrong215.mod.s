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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

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
    jmp     l_f0_exit              
    movl    $99, %eax               #   1:     if     99 > 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    jmp     l_f0_6_while_cond       #   5:     goto   6_while_cond
l_f0_9_while_cond:
    call    dummyCHARfunc           #   7:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   8:     if     100 <= t6 goto 10_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_10_while_body     
    jmp     l_f0_8                  #   9:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  11:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_1                  #  13:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $0, %eax                #  16:     if     0 # 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  17:     goto   14_if_false
l_f0_13_if_true:
    movl    $1, %eax                #  19:     assign v2 <- 1
    movb    %al, 12(%ebp)          
    jmp     l_f0_19_if_false        #  20:     goto   19_if_false
    jmp     l_f0_17                 #  21:     goto   17
l_f0_19_if_false:
l_f0_17:
    movl    $99, %eax               #  24:     assign v4 <- 99
    movb    %al, -14(%ebp)         
    jmp     l_f0_exit              
    movl    $1, %eax                #  26:     assign v1 <- 1
    movb    %al, 8(%ebp)           
l_f0_24_while_cond:
    jmp     l_f0_24_while_cond      #  28:     goto   24_while_cond
    jmp     l_f0_12                 #  29:     goto   12
l_f0_14_if_false:
l_f0_12:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <char> %ebp-21 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v1 <- t6
    movb    %al, -21(%ebp)         
    call    ReadInt                 #   2:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #   3:     assign v1 <- 100
    movb    %al, -21(%ebp)         

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t9       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    jmp     l_f2_1_if_true          #   1:     goto   1_if_true
    jmp     l_f2_1_if_true          #   2:     goto   1_if_true
l_f2_1_if_true:
    jmp     l_f2_0                  #   4:     goto   0
l_f2_0:
    call    dummyCHARfunc           #   6:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $71753, %eax            #   7:     param  2 <- 71753
    pushl   %eax                   
    movl    $83826, %eax            #   8:     if     83826 <= 27179 goto 9
    movl    $27179, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_9                 
    jmp     l_f2_10                 #   9:     goto   10
l_f2_9:
    movl    $1, %eax                #  11:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_11                 #  12:     goto   11
l_f2_10:
    movl    $0, %eax                #  14:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f2_11:
    movzbl  -14(%ebp), %eax         #  16:     param  1 <- t7
    pushl   %eax                   
    call    dummyBOOLfunc           #  17:     call   t8 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  18:     if     t8 = 1 goto 18
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_18                
    jmp     l_f2_14                 #  19:     goto   14
l_f2_18:
    jmp     l_f2_14                 #  21:     goto   14
    movl    $1, %eax                #  22:     assign t9 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_15                 #  23:     goto   15
l_f2_14:
    movl    $0, %eax                #  25:     assign t9 <- 0
    movb    %al, -16(%ebp)         
l_f2_15:
    movzbl  -16(%ebp), %eax         #  27:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  28:     call   f0
    addl    $12, %esp              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <char>>> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $7989, %eax             #   2:     mul    t0 <- 7989, 11529
    movl    $11529, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     div    t1 <- t0, 59579
    movl    $59579, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     div    t2 <- t1, 47911
    movl    $47911, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     mul    t3 <- t2, 43142
    movl    $43142, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $57719, %eax            #   6:     sub    t4 <- 57719, t3
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     assign v1 <- t4
    movl    %eax, v1               
    leal    _str_1, %eax            #   8:     &()    t5 <- _str_1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #  10:     call   WriteStr
    addl    $4, %esp               

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
