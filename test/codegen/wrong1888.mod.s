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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 29 of <array 56 of <array 99 of <array 48 of <array 70 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 100 of <array 65 of <array 94 of <array 27 of <array 35 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    jmp     l_f0_9                  #   0:     goto   9
    jmp     l_f0_9                  #   1:     goto   9
    jmp     l_f0_5                  #   2:     goto   5
l_f0_9:
l_f0_5:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   6:     goto   7
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movl    $1, %eax                #   9:     if     1 # t1 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #  10:     goto   2
l_f0_1:
    movl    $1, %eax                #  12:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #  13:     goto   3
l_f0_2:
    movl    $0, %eax                #  15:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #  17:     return t2
    jmp     l_f0_exit              
l_f0_13_while_cond:
    jmp     l_f0_14_while_body      #  19:     goto   14_while_body
    jmp     l_f0_12                 #  20:     goto   12
l_f0_14_while_body:
    jmp     l_f0_18_if_false        #  22:     goto   18_if_false
    jmp     l_f0_16                 #  23:     goto   16
l_f0_18_if_false:
l_f0_16:
    jmp     l_f0_13_while_cond      #  26:     goto   13_while_cond
l_f0_12:
    jmp     l_f0_23                 #  28:     goto   23
    jmp     l_f0_20                 #  29:     goto   20
l_f0_23:
    jmp     l_f0_21                 #  31:     goto   21
l_f0_20:
    movl    $1, %eax                #  33:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_22                 #  34:     goto   22
l_f0_21:
    movl    $0, %eax                #  36:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f0_22:
    movzbl  -15(%ebp), %eax         #  38:     return t3
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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 50 of <array 86 of <array 13 of <array 69 of <array 31 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     return 98
    jmp     l_f1_exit              
    call    ReadInt                 #   2:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 79 of <array 87 of <array 42 of <array 67 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
l_f2_1_while_cond:
    call    ReadInt                 #   1:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t2 <- t1, 99490
    movl    $99490, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t3 <- t2, 64345
    movl    $64345, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t4 <- t3, 35473
    movl    $35473, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $16456, %eax            #   5:     if     16456 > t4 goto 2_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  11:     goto   9
    jmp     l_f2_10_while_cond      #  12:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_4                  #  14:     goto   4
l_f2_4:
    jmp     l_f2_14_if_false        #  16:     goto   14_if_false
    movl    $77450, %eax            #  17:     if     77450 > 415 goto 16_if_true
    movl    $415, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  18:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  20:     goto   15
l_f2_17_if_false:
l_f2_15:
    call    dummyCHARfunc           #  23:     call   t5 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    jmp     l_f2_12                 #  24:     goto   12
l_f2_14_if_false:
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyProcedure          #   1:     call   dummyProcedure
    movl    $97, %eax               #   2:     assign v0 <- 97
    movb    %al, v0                

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
