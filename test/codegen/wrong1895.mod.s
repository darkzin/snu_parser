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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 60 of <array 90 of <array 25 of <array 85 of <array 41 of <char>>>>>>> %ebp+8 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $38890, %eax            #   0:     div    t3 <- 38890, 29235
    movl    $29235, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t4 <- t3, 96513
    movl    $96513, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t4
    movl    %eax, -28(%ebp)        
    movl    $1, %eax                #   3:     assign v2 <- 1
    movb    %al, -29(%ebp)         
    call    dummyINTfunc            #   4:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 100 of <array 80 of <array 58 of <array 67 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 33 of <array 41 of <array 68 of <array 39 of <array 14 of <char>>>>>>> %ebp+12 ]
    #    -18(%ebp)   1  [ $v2       <bool> %ebp-18 ]

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
l_f1_1_while_cond:
    movl    $50489, %eax            #   1:     if     50489 < 34847 goto 4
    movl    $34847, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_4                 
    jmp     l_f1_5                  #   2:     goto   5
l_f1_4:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   5:     goto   6
l_f1_5:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #   9:     assign v2 <- t3
    movb    %al, -18(%ebp)         
    jmp     l_f1_10                 #  10:     goto   10
    jmp     l_f1_10                 #  11:     goto   10
    jmp     l_f1_10                 #  12:     goto   10
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_11                 #  14:     goto   11
l_f1_10:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_11:
    movzbl  -14(%ebp), %eax         #  18:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  19:     goto   1_while_cond
    call    dummyBOOLfunc           #  20:     call   t5 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  21:     return t5
    jmp     l_f1_exit              
    jmp     l_f1_22                 #  22:     goto   22
l_f1_22:
    movl    $1, %eax                #  24:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_24                 #  25:     goto   24
    movl    $0, %eax                #  26:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f1_24:
    movl    $1, %eax                #  28:     if     1 # t6 goto 18
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_18                
    jmp     l_f1_19                 #  29:     goto   19
l_f1_18:
    movl    $1, %eax                #  31:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_20                 #  32:     goto   20
l_f1_19:
    movl    $0, %eax                #  34:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f1_20:
    movzbl  -17(%ebp), %eax         #  36:     assign v2 <- t7
    movb    %al, -18(%ebp)         

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $v0       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $v1       <char> %ebp-23 ]

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
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 <= 99 goto 4
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_4                 
    jmp     l_f2_5                  #   2:     goto   5
l_f2_4:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t3
    movb    %al, -22(%ebp)         
    movl    $97, %eax               #  10:     return 97
    jmp     l_f2_exit              
    movl    $97, %eax               #  11:     return 97
    jmp     l_f2_exit              
    movl    $58281, %eax            #  12:     if     58281 < 74614 goto 11_if_true
    movl    $74614, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  13:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  15:     goto   10
l_f2_12_if_false:
l_f2_10:
    leal    _str_1, %eax            #  18:     &()    t4 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  20:     call   WriteStr
    addl    $4, %esp               
    call    WriteLn                 #  21:     call   WriteLn
    jmp     l_f2_1_while_cond       #  22:     goto   1_while_cond
    call    dummyCHARfunc           #  23:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  24:     return t5
    jmp     l_f2_exit              
    movl    $97, %eax               #  25:     assign v1 <- 97
    movb    %al, -23(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   2:     if     99 <= t1 goto 2
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_2               
    jmp     l_test_3                #   3:     goto   3
l_test_2:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_4                #   6:     goto   4
l_test_3:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_4:
    movzbl  -15(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
