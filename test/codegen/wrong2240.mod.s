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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #   3:     if     97 > t4 goto 3_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
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
    movl    $0, %eax                #   0:     if     0 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $97, %eax               #   3:     return 97
    jmp     l_f1_exit              
l_f1_6_while_cond:
    movl    $34025, %eax            #   5:     if     34025 # 81546 goto 7_while_body
    movl    $81546, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_7_while_body      
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
    call    dummyINTfunc            #  10:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $0, %eax                #  11:     if     0 # 0 goto 11
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_11                
    jmp     l_f1_12                 #  12:     goto   12
l_f1_11:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_13                 #  15:     goto   13
l_f1_12:
    movl    $0, %eax                #  17:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f1_13:
    movzbl  -17(%ebp), %eax         #  19:     assign v2 <- t4
    movb    %al, -18(%ebp)         
    jmp     l_f1_0                  #  20:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    WriteLn                 #  23:     call   WriteLn
    movl    $97, %eax               #  24:     return 97
    jmp     l_f1_exit              

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
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    jmp     l_f2_2                  #   0:     goto   2
    jmp     l_f2_2                  #   1:     goto   2
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t3 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   4:     goto   2
l_f2_1:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   7:     goto   3
l_f2_2:
    movl    $0, %eax                #   9:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #  11:     assign v2 <- t4
    movb    %al, 12(%ebp)          
    movl    $93520, %eax            #  12:     add    t5 <- 93520, 42632
    movl    $42632, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     if     t5 < 5279 goto 7_if_true
    movl    $5279, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  14:     goto   8_if_false
l_f2_7_if_true:
    movl    $8919, %eax             #  16:     if     8919 <= 76928 goto 11
    movl    $76928, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_11                
    jmp     l_f2_12                 #  17:     goto   12
l_f2_11:
    movl    $1, %eax                #  19:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_13                 #  20:     goto   13
l_f2_12:
    movl    $0, %eax                #  22:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f2_13:
    movzbl  -21(%ebp), %eax         #  24:     assign v2 <- t6
    movb    %al, 12(%ebp)          
l_f2_16_while_cond:
    jmp     l_f2_15                 #  26:     goto   15
    jmp     l_f2_16_while_cond      #  27:     goto   16_while_cond
l_f2_15:
    jmp     l_f2_6                  #  29:     goto   6
l_f2_8_if_false:
l_f2_6:
    call    dummyBOOLfunc           #  32:     call   t7 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         

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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    movl    $37652, %eax            #   0:     sub    t0 <- 37652, 1231
    movl    $1231, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 3533
    movl    $3533, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t1 <= 24609 goto 1_if_true
    movl    $24609, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   3:     goto   2_if_false
l_test_1_if_true:
    movl    $100, %eax              #   5:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyINTfunc            #   9:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_7_if_true        #  10:     goto   7_if_true
    jmp     l_test_7_if_true        #  11:     goto   7_if_true
    jmp     l_test_7_if_true        #  12:     goto   7_if_true
    jmp     l_test_7_if_true        #  13:     goto   7_if_true
    jmp     l_test_7_if_true        #  14:     goto   7_if_true
    jmp     l_test_7_if_true        #  15:     goto   7_if_true
    jmp     l_test_7_if_true        #  16:     goto   7_if_true
    jmp     l_test_8_if_false       #  17:     goto   8_if_false
l_test_7_if_true:
l_test_19_while_cond:
    jmp     l_test_18               #  20:     goto   18
    jmp     l_test_19_while_cond    #  21:     goto   19_while_cond
l_test_18:
    jmp     l_test_21               #  23:     goto   21
l_test_21:
    movl    $65239, %eax            #  25:     assign v1 <- 65239
    movl    %eax, v1               
    movl    $75123, %eax            #  26:     assign v1 <- 75123
    movl    %eax, v1               
    jmp     l_test_6                #  27:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $100, %eax              #  30:     assign v0 <- 100
    movb    %al, v0                

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
