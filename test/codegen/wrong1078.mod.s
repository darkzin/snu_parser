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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 21 of <array 97 of <array 49 of <array 57 of <array 93 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 32 of <array 77 of <array 100 of <array 61 of <char>>>>>>> %ebp+20 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_4                  #   2:     goto   4
    jmp     l_f0_4                  #   3:     goto   4
l_f0_4:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   6:     goto   6
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   9:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
l_f0_10_while_cond:
    call    dummyCHARfunc           #  13:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  14:     if     98 >= t5 goto 11_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_11_while_body     
    jmp     l_f0_9                  #  15:     goto   9
l_f0_11_while_body:
    movl    $100, %eax              #  17:     if     100 # 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  18:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  20:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_10_while_cond      #  23:     goto   10_while_cond
l_f0_9:
    movl    $99, %eax               #  25:     if     99 <= 100 goto 18
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_18                
    jmp     l_f0_19                 #  26:     goto   19
l_f0_18:
    movl    $1, %eax                #  28:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_20                 #  29:     goto   20
l_f0_19:
    movl    $0, %eax                #  31:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f0_20:
    movzbl  -15(%ebp), %eax         #  33:     return t6
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]

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
    movl    $28587, %eax            #   0:     div    t4 <- 28587, 6563
    movl    $6563, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #   2:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_3                  #   3:     goto   3
    jmp     l_f1_3                  #   4:     goto   3
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f1_4:
    movzbl  -17(%ebp), %eax         #  10:     return t5
    jmp     l_f1_exit              
    movl    $59668, %eax            #  11:     assign v0 <- 59668
    movl    %eax, -24(%ebp)        

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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -13(%ebp)   1  [ $v1       <char> %ebp-13 ]

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
    movl    $74412, %eax            #   0:     if     74412 >= 3506 goto 1_if_true
    movl    $3506, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $1, %eax                #   4:     if     1 = 0 goto 6_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6_while_body      
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   7:     goto   5_while_cond
l_f2_4:
    movl    $97, %eax               #   9:     assign v1 <- 97
    movb    %al, -13(%ebp)         
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  14:     goto   9
    call    dummyProcedure          #  15:     call   dummyProcedure
    movl    $100, %eax              #  16:     if     100 < 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  17:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  19:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_10_while_cond      #  22:     goto   10_while_cond
l_f2_9:
    movl    $100, %eax              #  24:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  25:     call   WriteChar
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 8 of <array 32 of <array 77 of <array 100 of <array 61 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 21 of <array 97 of <array 49 of <array 57 of <array 93 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    leal    v1, %eax                #   0:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t0
    pushl   %eax                   
    leal    v0, %eax                #   2:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  2 <- t1
    pushl   %eax                   
    movl    $100, %eax              #   4:     param  1 <- 100
    pushl   %eax                   
    movl    $0, %eax                #   5:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #   6:     call   t2 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    call    ReadInt                 #   7:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <array 21 of <array 97 of <array 49 of <array 57 of <array 93 of <char>>>>>>
    .long    5
    .long   21
    .long   97
    .long   49
    .long   57
    .long   93
    .skip 529108713
    .align   4
v1:                                 # <array 8 of <array 32 of <array 77 of <array 100 of <array 61 of <char>>>>>>
    .long    5
    .long    8
    .long   32
    .long   77
    .long  100
    .long   61
    .skip 120243200








    # end of global data section
    #-----------------------------------------

    .end
##################################################
