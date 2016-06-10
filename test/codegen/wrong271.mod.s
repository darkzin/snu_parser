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
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 6 of <array 8 of <array 4 of <array 6 of <char>>>>>>> %ebp+16 ]

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
    movl    $98, %eax               #   0:     if     98 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $97, %eax               #   3:     if     97 > 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $1, %eax                #  12:     if     1 # 1 goto 9_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  13:     goto   10_if_false
l_f0_9_if_true:
l_f0_13_while_cond:
    movl    $99, %eax               #  16:     if     99 >= 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_14_while_body     
    jmp     l_f0_12                 #  17:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  19:     goto   13_while_cond
l_f0_12:
l_f0_17_while_cond:
    jmp     l_f0_16                 #  22:     goto   16
    jmp     l_f0_17_while_cond      #  23:     goto   17_while_cond
l_f0_16:
    call    dummyBOOLfunc           #  25:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #  26:     goto   8
l_f0_10_if_false:
l_f0_8:
    movl    $0, %eax                #  29:     assign v3 <- 0
    movb    %al, 12(%ebp)          

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 6 of <array 8 of <array 4 of <array 6 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]
    #   -2356(%ebp)  2328  [ $v2       <array 2 of <array 6 of <array 8 of <array 4 of <array 6 of <char>>>>>> %ebp-2356 ]
    #   -2360(%ebp)   4  [ $v3       <int> %ebp-2360 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2348, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $587, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2356(%ebp)          # local array 'v2': 5 dimensions
    movl    $2,-2352(%ebp)          #   dimension 1: 2 elements
    movl    $6,-2348(%ebp)          #   dimension 2: 6 elements
    movl    $8,-2344(%ebp)          #   dimension 3: 8 elements
    movl    $4,-2340(%ebp)          #   dimension 4: 4 elements
    movl    $6,-2336(%ebp)          #   dimension 5: 6 elements

    # function body
    movl    $40690, %eax            #   0:     add    t2 <- 40690, 50315
    movl    $50315, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t2 > 93704 goto 1_if_true
    movl    $93704, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    movl    $98, %eax               #   5:     if     98 >= 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_6_while_body      
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
l_f1_4:
    call    ReadInt                 #  10:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $98, %eax               #  14:     if     98 = 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  15:     goto   11_if_false
l_f1_10_if_true:
    movl    $97, %eax               #  17:     if     97 = 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  18:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  20:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_exit              
    jmp     l_f1_9                  #  24:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_20_if_false        #  27:     goto   20_if_false
    leal    -2356(%ebp), %eax       #  28:     &()    t4 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     param  2 <- t4
    pushl   %eax                   
    movl    $0, %eax                #  30:     param  1 <- 0
    pushl   %eax                   
    movl    $0, %eax                #  31:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  32:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movl    $89136, %eax            #  33:     assign v3 <- 89136
    movl    %eax, -2360(%ebp)      
    jmp     l_f1_18                 #  34:     goto   18
l_f1_20_if_false:
l_f1_18:

l_f1_exit:
    # epilogue
    addl    $2348, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]

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
l_f2_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     if     97 > t2 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_exit              
    call    dummyINTfunc            #   8:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, v0                
l_test_2_while_cond:
    movl    $97, %eax               #   2:     if     97 # 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    call    dummyBOOLfunc           #   5:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_2_while_cond     #   7:     goto   2_while_cond
l_test_1:
l_test_7_while_cond:
    movl    $99, %eax               #  10:     if     99 <= 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_8_while_body    
    jmp     l_test_6                #  11:     goto   6
l_test_8_while_body:
    movl    $0, %eax                #  13:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_7_while_cond     #  14:     goto   7_while_cond
l_test_6:
    movl    $100, %eax              #  16:     if     100 <= 97 goto 12
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_12              
    jmp     l_test_13               #  17:     goto   13
l_test_12:
    movl    $1, %eax                #  19:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_14               #  20:     goto   14
l_test_13:
    movl    $0, %eax                #  22:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_14:
    movzbl  -14(%ebp), %eax         #  24:     assign v1 <- t1
    movb    %al, v1                
    movl    $21333, %eax            #  25:     assign v2 <- 21333
    movl    %eax, v2               

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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
