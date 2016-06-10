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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 72 of <array 94 of <array 13 of <array 5 of <array 74 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $44996, %eax            #   1:     add    t5 <- 44996, 2581
    movl    $2581, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t6 <- t5, 42362
    movl    $42362, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $33329, %eax            #   3:     if     33329 <= t6 goto 2
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2                 
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $1, %eax                #   6:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_4                  #   7:     goto   4
l_f0_3:
    movl    $0, %eax                #   9:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f0_4:
    movzbl  -25(%ebp), %eax         #  11:     assign v1 <- t7
    movb    %al, 12(%ebp)          
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 58 of <array 49 of <array 57 of <array 86 of <array 11 of <int>>>>>>> %ebp+16 ]
    #    -18(%ebp)   1  [ $v3       <bool> %ebp-18 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $97, %eax               #   1:     if     97 <= 97 goto 4_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   2:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #   4:     goto   3
l_f1_5_if_false:
l_f1_3:
l_f1_8_while_cond:
    jmp     l_f1_7                  #   8:     goto   7
    jmp     l_f1_8_while_cond       #   9:     goto   8_while_cond
l_f1_7:
    jmp     l_f1_10                 #  11:     goto   10
l_f1_10:
    movl    $99, %eax               #  13:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    jmp     l_f1_16_if_false        #  14:     goto   16_if_false
    jmp     l_f1_14                 #  15:     goto   14
l_f1_16_if_false:
l_f1_14:
    call    dummyINTfunc            #  18:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_0                  #  19:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $100, %eax              #  22:     if     100 # 98 goto 19
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_19                
    jmp     l_f1_20                 #  23:     goto   20
l_f1_19:
    movl    $1, %eax                #  25:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_21                 #  26:     goto   21
l_f1_20:
    movl    $0, %eax                #  28:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f1_21:
    movzbl  -17(%ebp), %eax         #  30:     assign v3 <- t5
    movb    %al, -18(%ebp)         
    movl    $47472, %eax            #  31:     assign v1 <- 47472
    movl    %eax, 12(%ebp)         

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
l_f2_2_while_cond:
    jmp     l_f2_8                  #   2:     goto   8
    jmp     l_f2_5                  #   3:     goto   5
l_f2_8:
l_f2_5:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   7:     goto   7
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movl    $1, %eax                #  10:     if     1 # t4 goto 3_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_3_while_body      
    jmp     l_f2_1                  #  11:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #  13:     goto   2_while_cond
l_f2_1:
l_f2_11_while_cond:
    movl    $68586, %eax            #  16:     sub    t5 <- 68586, 40996
    movl    $40996, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     if     t5 < 11736 goto 12_while_body
    movl    $11736, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_12_while_body     
    jmp     l_f2_10                 #  18:     goto   10
l_f2_12_while_body:
    movl    $97, %eax               #  20:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_11_while_cond      #  21:     goto   11_while_cond
l_f2_10:

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $3386, %eax             #   2:     mul    t0 <- 3386, 93177
    movl    $93177, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t0 = 12851 goto 3_while_body
    movl    $12851, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
l_test_7_while_cond:
    jmp     l_test_6                #  10:     goto   6
    jmp     l_test_6                #  11:     goto   6
    movl    $97, %eax               #  12:     if     97 <= 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_12_if_true      
    jmp     l_test_13_if_false      #  13:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  15:     goto   11
l_test_13_if_false:
l_test_11:
    call    ReadInt                 #  18:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #  19:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_7_while_cond     #  20:     goto   7_while_cond
l_test_6:
    call    ReadInt                 #  22:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    call    dummyBOOLfunc           #  23:     call   t3 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  24:     if     t3 = 1 goto 19_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_19_if_true      
    jmp     l_test_20_if_false      #  25:     goto   20_if_false
l_test_19_if_true:
    movl    $98, %eax               #  27:     assign v0 <- 98
    movb    %al, v0                
    movl    $34328, %eax            #  28:     if     34328 >= 94189 goto 23_if_true
    movl    $94189, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_23_if_true      
    jmp     l_test_24_if_false      #  29:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  31:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_18               #  34:     goto   18
l_test_20_if_false:
l_test_18:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
