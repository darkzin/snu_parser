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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    movl    $34063, %eax            #   2:     return 34063
    jmp     l_f0_exit              
    movl    $61410, %eax            #   3:     return 61410
    jmp     l_f0_exit              
    movl    $26119, %eax            #   4:     return 26119
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $59123, %eax            #   7:     add    t2 <- 59123, 99444
    movl    $99444, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     sub    t3 <- t2, 91893
    movl    $91893, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     assign v0 <- t3
    movl    %eax, -24(%ebp)        
    movl    $22013, %eax            #  10:     assign v0 <- 22013
    movl    %eax, -24(%ebp)        

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 93 of <array 73 of <array 93 of <array 51 of <array 24 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 87 of <array 62 of <array 25 of <array 66 of <array 48 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 89 of <array 80 of <array 43 of <array 73 of <array 24 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    jmp     l_f1_exit              
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    movl    $86127, %eax            #   2:     if     86127 <= 53023 goto 5_if_true
    movl    $53023, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_if_false:
l_f1_4:
    call    dummyBOOLfunc           #   8:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_11_if_false        #   9:     goto   11_if_false
    jmp     l_f1_9                  #  10:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $97, %eax               #  13:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  14:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_1                  #  15:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyINTfunc            #  18:     call   t3 <- dummyINTfunc
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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 58 of <array 38 of <array 38 of <array 57 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 37 of <array 52 of <array 25 of <array 35 of <array 13 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 66 of <array 72 of <array 24 of <array 16 of <array 51 of <int>>>>>>> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    movl    $66449, %eax            #   0:     assign v4 <- 66449
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #   1:     if     0 # 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    jmp     l_f2_6                  #   4:     goto   6
    jmp     l_f2_6                  #   5:     goto   6
    jmp     l_f2_7                  #   6:     goto   7
l_f2_6:
    movl    $1, %eax                #   8:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_8                  #   9:     goto   8
l_f2_7:
    movl    $0, %eax                #  11:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_8:
    movzbl  -13(%ebp), %eax         #  13:     return t2
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  14:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    dummyBOOLfunc           #  17:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  18:     if     t3 = 1 goto 19
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_19                
    jmp     l_f2_17                 #  19:     goto   17
l_f2_19:
    movl    $1, %eax                #  21:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_18                 #  22:     goto   18
l_f2_17:
    movl    $0, %eax                #  24:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f2_18:
    movl    $1, %eax                #  26:     if     1 # t4 goto 12
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_12                
    jmp     l_f2_13                 #  27:     goto   13
l_f2_12:
    movl    $1, %eax                #  29:     assign t5 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_14                 #  30:     goto   14
l_f2_13:
    movl    $0, %eax                #  32:     assign t5 <- 0
    movb    %al, -16(%ebp)         
l_f2_14:
    movzbl  -16(%ebp), %eax         #  34:     return t5
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    call    ReadInt                 #   2:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
