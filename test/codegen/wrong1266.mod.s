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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    movl    $57644, %eax            #   0:     add    t1 <- 57644, 70165
    movl    $70165, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t1
    jmp     l_f0_exit              
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
    movl    $100, %eax              #   4:     if     100 # 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   5:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   7:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_1                  #  10:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  14:     if     t2 = 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  15:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  17:     goto   10
l_f0_12_if_false:
l_f0_10:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 16 of <array 90 of <array 70 of <array 81 of <array 73 of <int>>>>>>> %ebp+8 ]

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
l_f1_1_while_cond:
    movl    $98, %eax               #   1:     if     98 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $98, %eax               #   4:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_6_while_cond:
    movl    $89801, %eax            #   8:     sub    t1 <- 89801, 2344
    movl    $2344, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   9:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  10:     if     t1 < t2 goto 7_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_7_while_body      
    jmp     l_f1_5                  #  11:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  13:     goto   6_while_cond
l_f1_5:
l_f1_10_while_cond:
    movl    $100, %eax              #  16:     if     100 <= 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  17:     goto   9
l_f1_11_while_body:
    call    ReadInt                 #  19:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        
    call    dummyBOOLfunc           #  20:     call   t4 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $100, %eax              #  21:     return 100
    jmp     l_f1_exit              
    movl    $98, %eax               #  22:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_14                 #  23:     goto   14
l_f1_14:
    jmp     l_f1_10_while_cond      #  25:     goto   10_while_cond
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 83 of <array 31 of <array 92 of <array 65 of <array 16 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 99 of <array 6 of <array 89 of <array 39 of <array 54 of <char>>>>>>> %ebp+20 ]
    #    -17(%ebp)   1  [ $v4       <char> %ebp-17 ]

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
    jmp     l_f2_exit              
    movl    $97, %eax               #   1:     assign v4 <- 97
    movb    %al, -17(%ebp)         
    leal    _str_1, %eax            #   2:     &()    t1 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               

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
l_test_1_while_cond:
    movl    $70474, %eax            #   1:     mul    t0 <- 70474, 89509
    movl    $89509, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $74308, %eax            #   2:     if     74308 <= t0 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    call    WriteLn                 #   5:     call   WriteLn
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    jmp     l_test_7_if_false       #   8:     goto   7_if_false
    movl    $1, %eax                #   9:     assign v0 <- 1
    movb    %al, v0                
    movl    $42478, %eax            #  10:     assign v1 <- 42478
    movl    %eax, v1               
    jmp     l_test_12_if_false      #  11:     goto   12_if_false
    jmp     l_test_10               #  12:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_5                #  15:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $1, %eax                #  18:     assign v0 <- 1
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
