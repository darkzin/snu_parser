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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #    -25(%ebp)   1  [ $v3       <char> %ebp-25 ]

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
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t2 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $100, %eax              #   7:     assign v3 <- 100
    movb    %al, -25(%ebp)         
    movl    $77450, %eax            #   8:     div    t3 <- 77450, 90510
    movl    $90510, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $1114, %eax             #   9:     sub    t4 <- 1114, t3
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     assign v2 <- t4
    movl    %eax, 8(%ebp)          

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
    jmp     l_f1_2_while_body       #   3:     goto   2_while_body
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    movl    $99, %eax               #   8:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   9:     call   WriteChar
    addl    $4, %esp               
l_f1_10_while_cond:
    jmp     l_f1_9                  #  11:     goto   9
l_f1_13_while_cond:
    jmp     l_f1_13_while_cond      #  13:     goto   13_while_cond
l_f1_16_while_cond:
    movl    $100, %eax              #  15:     if     100 > 99 goto 17_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_17_while_body     
    jmp     l_f1_15                 #  16:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  18:     goto   16_while_cond
l_f1_15:
l_f1_20_while_cond:
    movl    $99, %eax               #  21:     if     99 < 98 goto 21_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_21_while_body     
    jmp     l_f1_19                 #  22:     goto   19
l_f1_21_while_body:
    jmp     l_f1_20_while_cond      #  24:     goto   20_while_cond
l_f1_19:
    movl    $30031, %eax            #  26:     assign v3 <- 30031
    movl    %eax, 12(%ebp)         
    jmp     l_f1_10_while_cond      #  27:     goto   10_while_cond
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 48 of <array 56 of <array 23 of <array 57 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 63 of <array 29 of <array 72 of <array 80 of <array 33 of <char>>>>>>> %ebp+20 ]
    #    -32(%ebp)   4  [ $v6       <int> %ebp-32 ]

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
    movl    $99, %eax               #   0:     assign v3 <- 99
    movb    %al, 12(%ebp)          
    movl    $61005, %eax            #   1:     add    t2 <- 61005, 7953
    movl    $7953, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t3 <- t2, 14980
    movl    $14980, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t4 <- t3, 11080
    movl    $11080, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     assign v6 <- t4
    movl    %eax, -32(%ebp)        
l_f2_3_while_cond:
    jmp     l_f2_2                  #   6:     goto   2
    jmp     l_f2_exit              
    movl    $22870, %eax            #   8:     add    t5 <- 22870, 81074
    movl    $81074, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     assign v6 <- t5
    movl    %eax, -32(%ebp)        
    jmp     l_f2_3_while_cond       #  10:     goto   3_while_cond
l_f2_2:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
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
    movl    $34728, %eax            #   0:     assign v0 <- 34728
    movl    %eax, v0               
    movl    $99, %eax               #   1:     if     99 >= 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2               
    jmp     l_test_3                #   2:     goto   3
l_test_2:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   5:     goto   4
l_test_3:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t0
    movb    %al, v1                
l_test_7_while_cond:
    jmp     l_test_8_while_body     #  11:     goto   8_while_body
    jmp     l_test_6                #  12:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  14:     goto   7_while_cond
l_test_6:
    jmp     l_test_exit            
    call    ReadInt                 #  17:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_15_while_cond:
    movl    $100, %eax              #  19:     if     100 <= 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_16_while_body   
    jmp     l_test_14               #  20:     goto   14
l_test_16_while_body:
    jmp     l_test_exit            
    movl    $86807, %eax            #  23:     assign v0 <- 86807
    movl    %eax, v0               
    jmp     l_test_15_while_cond    #  24:     goto   15_while_cond
l_test_14:

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

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
